# SerialLink-Proto

![SerialLink Logo](https://raw.githubusercontent.com/Shoaibashk/SerialLink-Proto/main/.github/logo.png)

**Protocol Buffer definitions for SerialLink — a cross-platform
serial port communication service**

[![CI Status](https://github.com/Shoaibashk/SerialLink-Proto/actions/workflows/ci.yml/badge.svg)](https://github.com/Shoaibashk/SerialLink-Proto/actions/workflows/ci.yml)
[![License](https://img.shields.io/github/license/Shoaibashk/SerialLink-Proto?color=blue)](https://github.com/Shoaibashk/SerialLink-Proto/blob/main/LICENSE)
[![Built with Buf](https://img.shields.io/badge/built%20with-buf-blue?logo=buffer)](https://buf.build)
[![Latest Release](https://img.shields.io/github/v/release/Shoaibashk/SerialLink-Proto?color=green)](https://github.com/Shoaibashk/SerialLink-Proto/releases)

[Features](#-features) • [Quick Start](#-quick-start) • [Submodule](#-use-as-git-submodule)
[Usage](#-usage) • [API](#-api-reference) • [Contributing](#-contributing)

---

## 📋 Overview

SerialLink-Proto is the **single source of truth** for Protocol Buffer
definitions in the SerialLink ecosystem. It provides:

- **Proto definitions** — Canonical API contracts in `proto/`
- **Pre-generated code** — Ready-to-use Go and Dart code in `gen/`
- **Multi-project support** — Use as a Git submodule in your projects

> **Note:** The `gen/` folder contains pre-generated code that is
committed to this repository, so projects can consume generated files
without running code generation.

## ✨ Features

- 🔌 **Port Discovery** — List and inspect available serial ports
- ⚡ **Port Management** — Open, close, and configure serial connections
- 📡 **Data Transfer** — Synchronous read/write operations
- 🌊 **Streaming** — Real-time bidirectional data streaming
- 🩺 **Diagnostics** — Health checks and agent information
- 🎯 **Multi-Language** — Pre-generated code for Go and Dart/Flutter

## 📁 Project Structure

```text
SerialLink-Proto/
├── 📂 proto/                    # Source protobuf definitions
│   └── seriallink/v1/
│       └── serial.proto         # API definitions (v1)
├── 📂 gen/                      # Pre-generated code (committed)
│   ├── go/                      # Go: serial.pb.go, serial_grpc.pb.go
│   └── dart/                    # Dart: serial.pb.dart, serial.pbgrpc.dart, ...
├── 📂 docs/                     # Documentation
│   ├── API.md                   # Full API reference
│   └── ARCHITECTURE.md          # Architecture & design guide
├── 📄 buf.yaml                  # Buf module configuration
├── 📄 buf.gen.yaml              # Code generation configuration
├── 📄 generate.ps1              # Generation script (Windows/PowerShell)
├── 📄 CONTRIBUTING.md           # Contribution guidelines
└── 📄 LICENSE                   # Apache 2.0 License
```

---

## 🚀 Quick Start

### Prerequisites

- [**buf**](https://buf.build/docs/installation) — Protocol buffer
toolchain (only needed for regenerating code)

<!-- markdownlint-disable MD013 -->
```powershell
  # Windows (Scoop)
  scoop install buf

  # Windows (Chocolatey)
  choco install buf

  # macOS
  brew install bufbuild/buf/buf

  # Linux
  $bufUrl = "https://github.com/" +
    "bufbuild/" +
    "buf/releases/latest/" +
    "download/buf-Linux-x86_64"
  curl -sSL $bufUrl -o /usr/local/bin/buf && chmod +x /usr/local/bin/buf
```
<!-- markdownlint-enable MD013 -->
<!-- markdownlint-enable MD013 -->

### Clone & Generate

```powershell
# Clone the repository
git clone https://github.com/Shoaibashk/SerialLink-Proto.git
cd SerialLink-Proto

# Generate all targets (Go + Dart)
.\generate.ps1

# Generate specific target
.\generate.ps1 -Target go
.\generate.ps1 -Target dart

# Clean and regenerate
.\generate.ps1 -Clean

# Lint before generating
.\generate.ps1 -Lint
```

### Generated Output

- **Go** — `gen/go/seriallink/v1/` — `serial.pb.go`, `serial_grpc.pb.go`
- **Dart** — `gen/dart/seriallink/v1/` —
  `serial.pb.dart`, `serial.pbenum.dart`,
  `serial.pbgrpc.dart`, `serial.pbjson.dart`

---

## 📦 Use as Git Submodule

This repository is designed to be used as a **Git submodule** in other
projects. The pre-generated code in `gen/` can be used directly without any
additional setup.

### Adding to Your Project

```bash
# Add as a submodule
git submodule add https://github.com/Shoaibashk/SerialLink-Proto.git proto

# Initialize submodules (for cloned projects)
git submodule update --init --recursive
```

### Go Projects

```go
import pb "path/to/proto/gen/go/seriallink/v1"

// Use the generated client
client := pb.NewSerialServiceClient(conn)
```

### Dart/Flutter Projects

Reference the generated files directly or copy them to your project:

```dart
import 'package:your_app/proto/gen/dart/seriallink/v1/serial.pbgrpc.dart';
```

### Updating the Submodule

```bash
# Pull latest changes
cd proto
git pull origin main
cd ..

# Commit the submodule update
git add proto
git commit -m "chore: update SerialLink-Proto submodule"
```

---

## 💻 Usage

### Go

<!-- markdownlint-disable MD013 -->
```go
package main

import (
    "context"
    "log"
    
    pb "github.com/Shoaibashk/SerialLink/api/proto/gen/go/seriallink/v1"
    "google.golang.org/grpc"
    "google.golang.org/grpc/credentials/insecure"
)

func main() {
    // Connect to SerialLink server
    conn, err := grpc.NewClient("localhost:50051", 
        grpc.WithTransportCredentials(insecure.NewCredentials()))
    if err != nil {
        log.Fatal(err)
    }
    defer conn.Close()

    client := pb.NewSerialServiceClient(conn)

    // List available ports
    resp, err := client.ListPorts(context.Background(), &pb.ListPortsRequest{})
    if err != nil {
        log.Fatal(err)
    }

    for _, port := range resp.Ports {
        log.Printf("Found port: %s - %s", port.Name, port.Description)
    }
}
```
<!-- markdownlint-enable MD013 -->

### Dart/Flutter

```dart
import 'package:grpc/grpc.dart';
import 'generated/seriallink/v1/serial.pbgrpc.dart';

void main() async {
  // Connect to SerialLink server
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final client = SerialServiceClient(channel);

  try {
    // List available ports
    final response = await client.listPorts(ListPortsRequest());
    
    for (var port in response.ports) {
      print('Found port: ${port.name} - ${port.description}');
    }
  } finally {
    await channel.shutdown();
  }
}
```

**pubspec.yaml:**

```yaml
dependencies:
  grpc: ^3.2.0
  protobuf: ^3.1.0
```

---

## 📖 API Reference

### Service Methods

- **Discovery**
  - `ListPorts` — Enumerate available serial ports
  - `GetPortInfo` — Get detailed port information
- **Management**
  - `OpenPort` — Open and configure a port
  - `ClosePort` — Close an open port
  - `GetPortStatus` — Get port status and statistics
- **Data**
  - `Write` — Write data to port
  - `Read` — Read data from port
- **Streaming**
  - `StreamRead` — Stream data from port
  - `StreamWrite` — Stream data to port
  - `BiDirectionalStream` — Full duplex streaming
- **Config**
  - `ConfigurePort` — Update port configuration
  - `GetPortConfig` — Get current configuration
- **Health**
  - `Ping` — Health check
  - `GetAgentInfo` — Agent version and info

📚 **[Full API Documentation →](docs/API.md)**  
🏗️ **[Architecture Guide →](docs/ARCHITECTURE.md)**

---

## 🔧 Buf Commands

```powershell
# Lint proto files
buf lint proto

# Check for breaking changes
buf breaking proto --against '.git#branch=main'

# Format proto files
buf format -w proto

# Generate code directly
buf generate proto
```

---

## 🤝 Contributing

We welcome contributions from the community! Whether it's bug fixes,
new features, or documentation improvements.

### Quick Start for Contributors

1. **Fork** the repository
1. **Clone** your fork:

<!-- markdownlint-disable MD013 -->
   ```powershell
   $repo = "https://github.com/" +
     "YOUR_USERNAME/SerialLink-Proto.git"
   git clone $repo
   cd SerialLink-Proto
   ```
<!-- markdownlint-enable MD013 -->

1. **Create** a feature branch:

   ```powershell
   git checkout -b feat/your-feature-name
   ```

1. **Make changes** to files in `proto/seriallink/v1/`
1. **Validate** your changes:

   ```powershell
   buf lint proto
   buf format -w proto
   .\generate.ps1 -Clean -Lint
   ```

1. **Commit** — use [Conventional Commits](https://www.conventionalcommits.org/).

   ```text
   feat: add new streaming RPC method
   fix: correct field type in PortConfig
   docs: update API documentation
   ```

1. **Push** and create a Pull Request

### Proto Style Guide

- **Message names** — `PascalCase` → `PortConfig`
- **Field names** — `snake_case` → `port_name`
- **Enum values** — `UPPER_SNAKE_CASE` → `PORT_TYPE_USB`
- **Comments** — Document all public APIs

📖 **[Full Contributing Guide →](CONTRIBUTING.md)**

---

## 📄 License

This project is licensed under the **Apache License 2.0**.
See [LICENSE](LICENSE).

---

## 🔗 Related Projects

- [SerialLink](https://github.com/Shoaibashk/SerialLink) — Main server
  implementation (Go)
- [SerialLink-Flutter](https://github.com/Shoaibashk/SerialLink-Flutter) —
  Flutter client application

## 📚 Resources

- [Protocol Buffers Documentation](https://protobuf.dev/)
- [gRPC Documentation](https://grpc.io/docs/)
- [Buf Documentation](https://buf.build/docs)

---

Made with ❤️ by [Shoaibashk](https://github.com/Shoaibashk)
