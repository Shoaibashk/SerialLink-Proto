# Contributing to SerialLink-Proto

Thank you for your interest in contributing to SerialLink-Proto! This document provides guidelines and instructions for contributing.

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Workflow](#development-workflow)
- [Pull Request Process](#pull-request-process)
- [Style Guide](#style-guide)
- [Commit Guidelines](#commit-guidelines)

## 📜 Code of Conduct

Please be respectful and constructive in all interactions. We're committed to maintaining a welcoming and inclusive community.

## 🚀 Getting Started

### Prerequisites

1. **buf CLI** - Protocol buffer toolchain
   ```powershell
   scoop install buf
   # or
   choco install buf
   ```

2. **Git** - Version control

### Setup

1. Fork the repository on GitHub

2. Clone your fork:
   ```powershell
   git clone https://github.com/YOUR_USERNAME/SerialLink-Proto.git
   cd SerialLink-Proto
   ```

3. Add upstream remote:
   ```powershell
   git remote add upstream https://github.com/Shoaibashk/SerialLink-Proto.git
   ```

4. Test the setup:
   ```powershell
   .\generate.ps1 -Lint
   ```

## 💻 Development Workflow

### Making Changes

1. **Sync with upstream:**
   ```powershell
   git fetch upstream
   git checkout main
   git merge upstream/main
   ```

2. **Create a feature branch:**
   ```powershell
   git checkout -b feat/your-feature-name
   ```

3. **Make your changes** to files in `proto/seriallink/v1/`

4. **Lint your changes:**
   ```powershell
   buf lint proto
   ```

5. **Format your changes:**
   ```powershell
   buf format -w proto
   ```

6. **Test generation:**
   ```powershell
   .\generate.ps1 -Clean -Lint
   ```

7. **Check for breaking changes:**
   ```powershell
   buf breaking proto --against '.git#branch=main'
   ```

### Testing

Before submitting, ensure:

- [ ] `buf lint proto` passes
- [ ] `buf format -d proto` shows no changes
- [ ] `.\generate.ps1 -Clean` completes successfully
- [ ] Generated Go code compiles
- [ ] Generated Dart code is valid

## 🔄 Pull Request Process

### Before Submitting

1. Ensure your changes follow the [style guide](#style-guide)
2. Update documentation if needed
3. Test all generation targets

### PR Title Format

Use [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>: <description>
```

**Types:**
- `feat` - New feature or message
- `fix` - Bug fix
- `docs` - Documentation only
- `style` - Formatting, no code change
- `refactor` - Code change that neither fixes nor adds
- `perf` - Performance improvement
- `test` - Adding tests
- `chore` - Maintenance tasks

**Examples:**
```
feat: add BatchWrite RPC for bulk operations
fix: correct DataBits enum values
docs: update streaming API examples
refactor: reorganize health check messages
```

### PR Description

Include:
- **What**: Brief description of changes
- **Why**: Motivation for the change
- **How**: Implementation approach (if complex)
- **Breaking**: Note any breaking changes

### Review Process

1. CI checks must pass
2. At least one maintainer approval required
3. Address all review feedback
4. Squash commits before merge

## 📝 Style Guide

### Proto File Organization

```protobuf
// File header with copyright

syntax = "proto3";

package seriallink.v1;

option go_package = "...";

// Service definitions first
service MyService {
    // RPCs grouped by functionality
}

// Message definitions
// - Request/Response pairs together
// - Shared messages after service-specific ones

// Enums last
```

### Naming Conventions

| Element | Convention | Example |
|---------|-----------|---------|
| Services | PascalCase | `SerialService` |
| RPCs | PascalCase | `ListPorts` |
| Messages | PascalCase | `PortInfo` |
| Fields | snake_case | `port_name` |
| Enums | SCREAMING_SNAKE_CASE | `PORT_TYPE_USB` |

### Documentation

- Add comments for all public APIs
- Use `//` for comments (not `/* */`)
- Document non-obvious field purposes

```protobuf
// PortConfig defines serial port communication parameters.
message PortConfig {
    // Baud rate in bits per second (e.g., 9600, 115200)
    uint32 baud_rate = 1;
    
    // Number of data bits per character (5-8)
    DataBits data_bits = 2;
}
```

### Field Numbers

- Reserve 1-15 for frequently used fields (1-byte encoding)
- Use 16-2047 for less common fields
- Never reuse deleted field numbers
- Use `reserved` for removed fields

```protobuf
message Example {
    reserved 2, 15, 9 to 11;
    reserved "old_field", "deprecated_field";
    
    string active_field = 1;
}
```

## 📌 Commit Guidelines

### Commit Message Format

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Subject Line

- Max 50 characters
- Imperative mood ("add" not "added")
- No period at end
- Capitalize first letter

### Body (optional)

- Wrap at 72 characters
- Explain what and why, not how

### Footer (optional)

- Reference issues: `Fixes #123`
- Note breaking changes: `BREAKING CHANGE: ...`

### Examples

```
feat(streaming): add chunk acknowledgment

Add sequence numbers and acknowledgment messages to streaming
RPCs for reliable delivery tracking.

Fixes #42
```

```
fix(config): correct flow control enum values

FLOW_CONTROL_HARDWARE and FLOW_CONTROL_SOFTWARE were swapped.
This is a breaking change for existing clients.

BREAKING CHANGE: FlowControl enum values reordered
```

## ❓ Questions?

- Open an issue for bugs or feature requests
- Start a discussion for questions

Thank you for contributing! 🎉
