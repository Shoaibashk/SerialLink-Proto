<<<<<<< Updated upstream
# SerialLink-Proto
This is a common pattern for sharing protobuf definitions across multiple projects.
=======
<p align="center">
  <img src="https://raw.githubusercontent.com/Shoaibashk/SerialLink-Proto/main/.github/logo.png" alt="SerialLink Logo" width="150" />
</p>

<h1 align="center">SerialLink-Proto</h1>

<p align="center">
  <strong>Protocol Buffer definitions for SerialLink - A cross-platform serial port communication service</strong>
</p>

<p align="center">
  <a href="https://github.com/Shoaibashk/SerialLink-Proto/actions/workflows/ci.yml">
    <img src="https://github.com/Shoaibashk/SerialLink-Proto/actions/workflows/ci.yml/badge.svg" alt="CI Status" />
  </a>
  <a href="https://github.com/Shoaibashk/SerialLink-Proto/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/Shoaibashk/SerialLink-Proto?color=blue" alt="License" />
  </a>
  <a href="https://buf.build">
    <img src="https://img.shields.io/badge/built%20with-buf-blue?logo=buffer" alt="Built with Buf" />
  </a>
  <a href="https://github.com/Shoaibashk/SerialLink-Proto/releases">
    <img src="https://img.shields.io/github/v/release/Shoaibashk/SerialLink-Proto?color=green" alt="Latest Release" />
  </a>
</p>

<p align="center">
  <a href="#-features">Features</a> •
  <a href="#-quick-start">Quick Start</a> •
  <a href="#-usage">Usage</a> •
  <a href="#-api-reference">API</a> •
  <a href="#-contributing">Contributing</a>
</p>

---

## ✨ Features

- 🔌 **Port Discovery** — List and inspect available serial ports with detailed metadata
- ⚡ **Port Management** — Open, close, and configure serial connections with session management
- 📡 **Data Transfer** — Synchronous read/write operations with timeout control
- 🌊 **Streaming** — Real-time bidirectional data streaming with chunked transfer
- 🩺 **Diagnostics** — Health checks, ping, and comprehensive agent information
- 🎯 **Multi-Language** — Generate code for Go, C#, Dart/Flutter, Python, JavaScript, and more
- 🛡️ **Type Safety** — Dedicated request/response types for each RPC following gRPC best practices
- 📊 **Statistics** — Track bytes sent/received, errors, and connection uptime

## 📁 Project Structure

```
SerialLink-Proto/
├── 📂 proto/                    # Source protobuf definitions
│   └── seriallink/v1/
│       └── serial.proto         # API definitions (v1)
├── 📂 gen/                      # Generated code (git-ignored)
│   ├── go/                      # Generated Go code
│   └── dart/                    # Generated Dart code
├── 📂 docs/                     # Documentation
│   ├── API.md                   # API reference
│   └── ARCHITECTURE.md          # Architecture guide
├── 📂 .github/workflows/        # CI/CD pipelines
├── 📄 buf.yaml                  # Buf configuration
├── 📄 buf.gen.yaml              # Code generation config
└── 📄 generate.ps1              # Generation script (Windows)
```

## 🚀 Quick Start

### Prerequisites

- [**buf**](https://buf.build/docs/installation) — Protocol buffer toolchain

  ```powershell
  # Windows (Scoop)
  scoop install buf

  # Windows (Chocolatey)
  choco install buf

  # macOS
  brew install bufbuild/buf/buf

  # Linux
  curl -sSL "https://github.com/bufbuild/buf/releases/latest/download/buf-Linux-x86_64" -o /usr/local/bin/buf && chmod +x /usr/local/bin/buf
  ```

### Generate Code

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

After running code generation:

| Language | Location | Files |
|----------|----------|-------|
| **Go** | `gen/go/seriallink/v1/` | `serial.pb.go`, `serial_grpc.pb.go` |
| **C#** | `gen/csharp/` | `Serial.cs`, `SerialGrpc.cs` |
| **Dart** | `gen/dart/seriallink/v1/` | `serial.pb.dart`, `serial.pbenum.dart`, `serial.pbgrpc.dart` |

## 💻 Usage

### Go

```go
import (
    "context"
    "log"
    
    pb "github.com/Shoaibashk/SerialLink-Proto/gen/go/seriallink/v1"
    "google.golang.org/grpc"
    "google.golang.org/grpc/credentials/insecure"
)

func main() {
    // Connect to SerialLink server
    conn, err := grpc.Dial("localhost:50051", grpc.WithTransportCredentials(insecure.NewCredentials()))
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

    // Open port with configuration
    openResp, err := client.OpenPort(context.Background(), &pb.OpenPortRequest{
        PortName: "COM3",
        Config: &pb.PortConfig{
            BaudRate:    115200,
            DataBits:    pb.DataBits_DATA_BITS_8,
            StopBits:    pb.StopBits_STOP_BITS_1,
            Parity:      pb.Parity_PARITY_NONE,
            FlowControl: pb.FlowControl_FLOW_CONTROL_NONE,
        },
    })
    if err != nil {
        log.Fatal(err)
    }

    log.Printf("Port opened with session: %s", openResp.SessionId)
}
```

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

Add to your `pubspec.yaml`:

```yaml
dependencies:
  grpc: ^3.2.0
  protobuf: ^3.1.0
```

## 📖 API Reference

### Service Methods

| Category | Method | Description |
|----------|--------|-------------|
| **Discovery** | `ListPorts` | Enumerate available serial ports |
| | `GetPortInfo` | Get detailed port information (returns `GetPortInfoResponse`) |
| **Management** | `OpenPort` | Open and configure a port with session management |
| | `ClosePort` | Close an open port and release resources |
| | `GetPortStatus` | Get port status and statistics (returns `GetPortStatusResponse`) |
| **Data** | `Write` | Write data to port with flush control |
| | `Read` | Read data from port with timeout |
| **Streaming** | `StreamRead` | Server-side streaming of incoming data |
| | `StreamWrite` | Client-side streaming for batch writes |
| | `BiDirectionalStream` | Full-duplex bidirectional streaming |
| **Config** | `ConfigurePort` | Update port configuration on open port |
| | `GetPortConfig` | Get current configuration (returns `GetPortConfigResponse`) |
| **Health** | `Ping` | Health check with timestamp |
| | `GetAgentInfo` | Agent version, OS, architecture, and config info |

📚 **[Full API Documentation →](docs/API.md)**

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

## 🤝 Contributing

We welcome contributions! Here's how you can help:

### Development Setup

1. **Fork** the repository
2. **Clone** your fork:
   ```powershell
   git clone https://github.com/YOUR_USERNAME/SerialLink-Proto.git
   ```
3. **Create** a feature branch:
   ```powershell
   git checkout -b feat/amazing-feature
   ```

### Making Changes

1. **Edit** proto files in `proto/seriallink/v1/`
2. **Lint** your changes:
   ```powershell
   buf lint proto
   ```
3. **Format** your changes:
   ```powershell
   buf format -w proto
   ```
4. **Test** generation:
   ```powershell
   .\generate.ps1 -Clean -Lint
   ```

### Commit Guidelines

We use [Conventional Commits](https://www.conventionalcommits.org/):

```
feat: add new streaming RPC method
fix: correct field type in PortConfig
docs: update API documentation
refactor: reorganize message definitions
```

### Pull Request

1. **Push** your changes:
   ```powershell
   git push origin feat/amazing-feature
   ```
2. **Open** a Pull Request
3. **Wait** for CI checks to pass
4. **Address** review feedback

### Proto Style Guide

- Use `PascalCase` for message and enum names
- Use `snake_case` for field names
- Add comments for all public APIs
- Keep backward compatibility in mind

## 📄 License

This project is licensed under the **Apache License 2.0** — see the [LICENSE](LICENSE) file for details.

## 🔗 Related Projects

| Project | Description |
|---------|-------------|
| [SerialLink](https://github.com/Shoaibashk/SerialLink) | Main server implementation (Go) |
| [SerialLink-Flutter](https://github.com/Shoaibashk/SerialLink-Flutter) | Flutter client application |

## 📚 Resources

- [Protocol Buffers Documentation](https://protobuf.dev/)
- [gRPC Documentation](https://grpc.io/docs/)
- [Buf Documentation](https://buf.build/docs)

---

<p align="center">
  Made with ❤️ by <a href="https://github.com/Shoaibashk">Shoaibashk</a>
</p>
>>>>>>> Stashed changes
