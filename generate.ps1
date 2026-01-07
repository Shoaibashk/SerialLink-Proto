#!/usr/bin/env pwsh
#Requires -Version 5.1

<#
.SYNOPSIS
    Generate protobuf code for all supported languages.

.DESCRIPTION
    Main entry point for code generation. Uses buf to generate Go and Dart/Flutter
    protobuf and gRPC code from the proto definitions.

.PARAMETER Target
    Language target: 'all', 'go', 'dart', or 'flutter'. Default: 'all'

.PARAMETER Clean
    Remove generated files before regenerating.

.PARAMETER Lint
    Run buf lint before generation.

.EXAMPLE
    .\generate.ps1
    Generate code for all targets.

.EXAMPLE
    .\generate.ps1 -Target go -Clean
    Clean and regenerate Go code only.

.EXAMPLE
    .\generate.ps1 -Lint
    Lint proto files and generate all targets.
#>

[CmdletBinding()]
param(
    [Parameter()]
    [ValidateSet('all', 'go', 'dart', 'flutter')]
    [string]$Target = 'all',

    [Parameter()]
    [switch]$Clean,

    [Parameter()]
    [switch]$Lint
)

$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'

# Retry configuration for rate limits
$MaxRetries = 5
$InitialDelaySeconds = 30

# Normalize 'flutter' to 'dart'
if ($Target -eq 'flutter') { $Target = 'dart' }

#region Helper Functions
function Write-Step { param([string]$Message) Write-Host "`n>> $Message" -ForegroundColor Cyan }
function Write-Success { param([string]$Message) Write-Host "  [OK] $Message" -ForegroundColor Green }
function Write-Failure { param([string]$Message) Write-Host "  [FAIL] $Message" -ForegroundColor Red }
function Write-Info { param([string]$Message) Write-Host "  $Message" -ForegroundColor Gray }
function Write-Warning { param([string]$Message) Write-Host "  [WARN] $Message" -ForegroundColor Yellow }

function Invoke-BufGenerate {
    param(
        [string]$Command,
        [string]$TemplateFile = $null
    )
    
    for ($attempt = 1; $attempt -le $MaxRetries; $attempt++) {
        if ($TemplateFile) {
            $output = buf generate proto --template $TemplateFile 2>&1
        } else {
            $output = buf generate proto 2>&1
        }
        
        if ($LASTEXITCODE -eq 0) {
            return @{ Success = $true; Output = $output }
        }
        
        $outputStr = $output -join " "
        if ($outputStr -match "resource_exhausted|rate.limit|too many requests") {
            $delay = $InitialDelaySeconds * [Math]::Pow(2, $attempt - 1)
            if ($attempt -lt $MaxRetries) {
                Write-Warning "Rate limited. Waiting $delay seconds before retry ($attempt/$MaxRetries)..."
                Start-Sleep -Seconds $delay
            }
        } else {
            # Non-rate-limit error, fail immediately
            return @{ Success = $false; Output = $output }
        }
    }
    
    return @{ Success = $false; Output = "Rate limit exceeded after $MaxRetries retries" }
}
#endregion

#region Main Script
Write-Host ""
Write-Host "=====================================================" -ForegroundColor Magenta
Write-Host " SerialLink-Proto Code Generator" -ForegroundColor Magenta
Write-Host "=====================================================" -ForegroundColor Magenta

$projectRoot = $PSScriptRoot
Set-Location $projectRoot

# Add Dart pub cache to PATH for protoc-gen-dart
$pubCacheBin = Join-Path $env:LOCALAPPDATA "Pub\Cache\bin"
if (Test-Path $pubCacheBin) {
    $env:PATH = "$pubCacheBin;$env:PATH"
}

# Check buf installation
Write-Step "Checking prerequisites"
try {
    $bufVersion = buf --version 2>&1
    Write-Success "buf is installed ($bufVersion)"
} catch {
    Write-Failure "buf is not installed"
    Write-Info "Install: scoop install buf  OR  choco install buf"
    Write-Info "More info: https://buf.build/docs/installation"
    exit 1
}

# Lint (if requested)
if ($Lint) {
    Write-Step "Linting proto files"
    try {
        buf lint proto
        Write-Success "Lint passed"
    } catch {
        Write-Failure "Lint failed"
        exit 1
    }
}

# Clean (if requested)
if ($Clean) {
    Write-Step "Cleaning generated files"
    
    if ($Target -in 'all', 'go') {
        if (Test-Path "gen\go") {
            Remove-Item -Path "gen\go" -Recurse -Force
            Write-Success "Cleaned gen/go/"
        }
    }
    
    if ($Target -in 'all', 'dart') {
        if (Test-Path "gen\dart") {
            Remove-Item -Path "gen\dart" -Recurse -Force
            Write-Success "Cleaned gen/dart/"
        }
    }
}

# Create output directories
if (-not (Test-Path "gen")) {
    New-Item -Path "gen" -ItemType Directory -Force | Out-Null
}

# Generate code
Write-Step "Generating code (target: $Target)"

$generateSuccess = $false
try {
    if ($Target -eq 'all') {
        # Use main buf.gen.yaml for all targets
        $result = Invoke-BufGenerate
        if ($result.Success) {
            $generateSuccess = $true
            Write-Success "Generated Go code -> gen/go/"
            Write-Success "Generated Dart code -> gen/dart/"
        } else {
            throw $result.Output
        }
    }
    elseif ($Target -eq 'go') {
        # Go-only generation
        $goTemplate = @"
version: v2
plugins:
  - remote: buf.build/protocolbuffers/go
    out: gen/go
    opt: [paths=source_relative]
  - remote: buf.build/grpc/go
    out: gen/go
    opt: [paths=source_relative]
"@
        $tempFile = Join-Path $env:TEMP "buf-gen-go-$(New-Guid).yaml"
        $goTemplate | Out-File -FilePath $tempFile -Encoding UTF8 -NoNewline
        try {
            $result = Invoke-BufGenerate -TemplateFile $tempFile
            if ($result.Success) {
                $generateSuccess = $true
                Write-Success "Generated Go code -> gen/go/"
            } else {
                throw $result.Output
            }
        } finally {
            Remove-Item $tempFile -Force -ErrorAction SilentlyContinue
        }
    }
    elseif ($Target -eq 'dart') {
        # Dart-only generation using main buf.gen.yaml (includes local protoc-gen-dart)
        $dartTemplate = @"
version: v2
plugins:
  - local: protoc-gen-dart
    out: gen/dart
    opt:
      - grpc
"@
        $tempFile = Join-Path $env:TEMP "buf-gen-dart-$(New-Guid).yaml"
        $dartTemplate | Out-File -FilePath $tempFile -Encoding UTF8 -NoNewline
        try {
            $result = Invoke-BufGenerate -TemplateFile $tempFile
            if ($result.Success) {
                $generateSuccess = $true
                Write-Success "Generated Dart code -> gen/dart/"
            } else {
                throw $result.Output
            }
        } finally {
            Remove-Item $tempFile -Force -ErrorAction SilentlyContinue
        }
    }
} catch {
    Write-Failure "Generation failed: $_"
    Write-Info "See: https://buf.build/docs/bsr/rate-limits/"
    exit 1
}

# Summary
Write-Host ""
Write-Host "=====================================================" -ForegroundColor Green
Write-Host " Generation Complete!" -ForegroundColor Green
Write-Host "=====================================================" -ForegroundColor Green
Write-Host ""

# Show generated files
if (Test-Path "gen") {
    Write-Host "Generated files:" -ForegroundColor White
    Get-ChildItem -Path "gen" -Recurse -File | ForEach-Object {
        $relativePath = $_.FullName.Replace("$projectRoot\", "")
        Write-Host "  - $relativePath" -ForegroundColor Gray
    }
}
Write-Host ""
#endregion
