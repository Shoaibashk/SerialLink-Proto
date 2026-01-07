# Architecture Guide

This document describes the architecture and design principles of the
SerialLink-Proto repository.

## 📐 Design Principles

### 1. Single Source of Truth

All protocol buffer definitions live in the `proto/` directory. This is
the canonical source for all API contracts across the SerialLink
ecosystem.

```text
proto/
└── seriallink/v1/
    └── serial.proto    ← Single source for all definitions
```

### 2. Generated Code Isolation

Generated code is placed in `gen/` and is **excluded from version
control**. This ensures:

- No merge conflicts on generated files
- Fresh generation on each build
- Reproducible builds across environments
- Clear separation of source and artifacts

### 3. Semantic Versioning

API versions are embedded in the package path (`seriallink/v1/`), enabling:

- Multiple API versions to coexist
- Clear migration paths
- Backward compatibility preservation

## 📁 Folder Structure

```text
SerialLink-Proto/
├── proto/                          # 📦 Source Definitions
│   └── seriallink/
│       └── v1/
│           └── serial.proto        # API contract
│
├── gen/                            # 🔧 Generated Code (git-ignored)
│   ├── go/
│   │   └── seriallink/v1/
│   │       ├── serial.pb.go        # Messages
│   │       └── serial_grpc.pb.go   # Services
│   └── dart/
│       └── seriallink/v1/
│           ├── serial.pb.dart
│           ├── serial.pbenum.dart
│           ├── serial.pbgrpc.dart
│           └── serial.pbjson.dart
│
├── docs/                           # 📚 Documentation
│   ├── API.md
│   └── ARCHITECTURE.md
│
├── .github/                        # 🔄 CI/CD
│   └── workflows/
│       ├── ci.yml                  # Build & lint
│       ├── pr-checks.yml           # PR validation
│       └── release.yml             # Release automation
│
├── buf.yaml                        # Buf module config
├── buf.gen.yaml                    # Code generation config
├── generate.ps1                    # Windows generation script
└── .gitignore                      # Excludes gen/
```

## ⚙️ Configuration

### `buf.yaml`

Defines the buf module and lint/breaking rules:

```yaml
version: v2
modules:
  - path: proto
lint:
  use:
    - STANDARD
breaking:
  use:
    - FILE
```

### `buf.gen.yaml`

Configures code generation for all target languages:

```yaml
version: v2
managed:
  enabled: true
plugins:
  # Go
  - remote: buf.build/protocolbuffers/go
    out: gen/go
  - remote: buf.build/grpc/go
    out: gen/go
  # Dart
  - remote: buf.build/protocolbuffers/dart
    out: gen/dart
```

## 🔄 Generation Workflow

```text
┌─────────────────────────────────────────────────────────────┐
│                     proto/seriallink/v1/                    │
│                        serial.proto                         │
└─────────────────────────┬───────────────────────────────────┘
                          │
                          ▼
┌─────────────────────────────────────────────────────────────┐
│                    buf lint (validate)                      │
└─────────────────────────┬───────────────────────────────────┘
                          │
                          ▼
┌─────────────────────────────────────────────────────────────┐
│                  buf generate (compile)                     │
└──────────────┬──────────────────────────────┬───────────────┘
               │                              │
               ▼                              ▼
┌──────────────────────────┐    ┌──────────────────────────┐
│        gen/go/           │    │       gen/dart/          │
│   seriallink/v1/         │    │   seriallink/v1/         │
│  ├── serial.pb.go        │    │  ├── serial.pb.dart      │
│  └── serial_grpc.pb.go   │    │  ├── serial.pbenum.dart  │
│                          │    │  ├── serial.pbgrpc.dart  │
│                          │    │  └── serial.pbjson.dart  │
└──────────────────────────┘    └──────────────────────────┘
```

## 🏗️ CI/CD Pipeline

### On Pull Request

1. **Lint** — Validate proto syntax and style
2. **Breaking** — Check for breaking API changes
3. **Format** — Ensure consistent formatting
4. **Generate** — Build code for all languages
5. **Verify** — Compile generated code

### On Main Push

1. All PR checks
2. Generate artifacts
3. Cache for downstream projects

### On Tag (Release)

1. All CI checks
2. Generate code archives
3. Create GitHub release
4. Attach artifacts

## 🎯 Best Practices Applied

- **Version in path** — `seriallink/v1/`
- **Generated code isolation** — `gen/` (git-ignored)
- **Reproducible builds** — `buf.lock` for plugins
- **Lint enforcement** — STANDARD lint rules
- **Breaking detection** — FILE-level breaking checks
- **CI validation** — GitHub Actions workflows

## 📦 Integration Guide

### Go Projects

```go
import pb "github.com/Shoaibashk/SerialLink-Proto/gen/go/seriallink/v1"
```

### Flutter Projects

Copy generated files from `gen/dart/` to your project:

```text
your-flutter-app/
└── lib/
    └── generated/
        └── seriallink/v1/
            ├── serial.pb.dart
            ├── serial.pbenum.dart
            └── serial.pbgrpc.dart
```

## 🔀 Extending the API

### Adding a New Message

1. Edit `proto/seriallink/v1/serial.proto`
2. Run `.\generate.ps1 -Lint`
3. Commit proto changes only

### Adding a New Language

1. Update `buf.gen.yaml` with new plugin
2. Update `generate.ps1` if needed
3. Add CI verification step

### Adding a New API Version

1. Create `proto/seriallink/v2/`
2. Copy and modify definitions
3. Update buf configurations
4. Maintain both versions

## 📚 References

- [Buf Best Practices](https://buf.build/docs/best-practices)
- [Protobuf Style Guide](https://protobuf.dev/programming-guides/style/)
- [gRPC Design Principles](https://grpc.io/docs/what-is-grpc/)
- [API Versioning](https://cloud.google.com/apis/design/versioning)
