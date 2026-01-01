// This is a generated file - do not edit.
//
// Generated from seriallink/v1/serial.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use portTypeDescriptor instead')
const PortType$json = {
  '1': 'PortType',
  '2': [
    {'1': 'PORT_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'PORT_TYPE_USB', '2': 1},
    {'1': 'PORT_TYPE_NATIVE', '2': 2},
    {'1': 'PORT_TYPE_BLUETOOTH', '2': 3},
    {'1': 'PORT_TYPE_VIRTUAL', '2': 4},
  ],
};

/// Descriptor for `PortType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List portTypeDescriptor = $convert.base64Decode(
    'CghQb3J0VHlwZRIZChVQT1JUX1RZUEVfVU5TUEVDSUZJRUQQABIRCg1QT1JUX1RZUEVfVVNCEA'
    'ESFAoQUE9SVF9UWVBFX05BVElWRRACEhcKE1BPUlRfVFlQRV9CTFVFVE9PVEgQAxIVChFQT1JU'
    'X1RZUEVfVklSVFVBTBAE');

@$core.Deprecated('Use dataBitsDescriptor instead')
const DataBits$json = {
  '1': 'DataBits',
  '2': [
    {'1': 'DATA_BITS_UNSPECIFIED', '2': 0},
    {'1': 'DATA_BITS_5', '2': 5},
    {'1': 'DATA_BITS_6', '2': 6},
    {'1': 'DATA_BITS_7', '2': 7},
    {'1': 'DATA_BITS_8', '2': 8},
  ],
};

/// Descriptor for `DataBits`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dataBitsDescriptor = $convert.base64Decode(
    'CghEYXRhQml0cxIZChVEQVRBX0JJVFNfVU5TUEVDSUZJRUQQABIPCgtEQVRBX0JJVFNfNRAFEg'
    '8KC0RBVEFfQklUU182EAYSDwoLREFUQV9CSVRTXzcQBxIPCgtEQVRBX0JJVFNfOBAI');

@$core.Deprecated('Use stopBitsDescriptor instead')
const StopBits$json = {
  '1': 'StopBits',
  '2': [
    {'1': 'STOP_BITS_UNSPECIFIED', '2': 0},
    {'1': 'STOP_BITS_1', '2': 1},
    {'1': 'STOP_BITS_1_5', '2': 2},
    {'1': 'STOP_BITS_2', '2': 3},
  ],
};

/// Descriptor for `StopBits`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List stopBitsDescriptor = $convert.base64Decode(
    'CghTdG9wQml0cxIZChVTVE9QX0JJVFNfVU5TUEVDSUZJRUQQABIPCgtTVE9QX0JJVFNfMRABEh'
    'EKDVNUT1BfQklUU18xXzUQAhIPCgtTVE9QX0JJVFNfMhAD');

@$core.Deprecated('Use parityDescriptor instead')
const Parity$json = {
  '1': 'Parity',
  '2': [
    {'1': 'PARITY_UNSPECIFIED', '2': 0},
    {'1': 'PARITY_NONE', '2': 1},
    {'1': 'PARITY_ODD', '2': 2},
    {'1': 'PARITY_EVEN', '2': 3},
    {'1': 'PARITY_MARK', '2': 4},
    {'1': 'PARITY_SPACE', '2': 5},
  ],
};

/// Descriptor for `Parity`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List parityDescriptor = $convert.base64Decode(
    'CgZQYXJpdHkSFgoSUEFSSVRZX1VOU1BFQ0lGSUVEEAASDwoLUEFSSVRZX05PTkUQARIOCgpQQV'
    'JJVFlfT0REEAISDwoLUEFSSVRZX0VWRU4QAxIPCgtQQVJJVFlfTUFSSxAEEhAKDFBBUklUWV9T'
    'UEFDRRAF');

@$core.Deprecated('Use flowControlDescriptor instead')
const FlowControl$json = {
  '1': 'FlowControl',
  '2': [
    {'1': 'FLOW_CONTROL_UNSPECIFIED', '2': 0},
    {'1': 'FLOW_CONTROL_NONE', '2': 1},
    {'1': 'FLOW_CONTROL_HARDWARE', '2': 2},
    {'1': 'FLOW_CONTROL_SOFTWARE', '2': 3},
  ],
};

/// Descriptor for `FlowControl`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List flowControlDescriptor = $convert.base64Decode(
    'CgtGbG93Q29udHJvbBIcChhGTE9XX0NPTlRST0xfVU5TUEVDSUZJRUQQABIVChFGTE9XX0NPTl'
    'RST0xfTk9ORRABEhkKFUZMT1dfQ09OVFJPTF9IQVJEV0FSRRACEhkKFUZMT1dfQ09OVFJPTF9T'
    'T0ZUV0FSRRAD');

@$core.Deprecated('Use listPortsRequestDescriptor instead')
const ListPortsRequest$json = {
  '1': 'ListPortsRequest',
  '2': [
    {'1': 'only_available', '3': 1, '4': 1, '5': 8, '10': 'onlyAvailable'},
  ],
};

/// Descriptor for `ListPortsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPortsRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0UG9ydHNSZXF1ZXN0EiUKDm9ubHlfYXZhaWxhYmxlGAEgASgIUg1vbmx5QXZhaWxhYm'
    'xl');

@$core.Deprecated('Use listPortsResponseDescriptor instead')
const ListPortsResponse$json = {
  '1': 'ListPortsResponse',
  '2': [
    {
      '1': 'ports',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.seriallink.v1.PortInfo',
      '10': 'ports'
    },
  ],
};

/// Descriptor for `ListPortsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPortsResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0UG9ydHNSZXNwb25zZRItCgVwb3J0cxgBIAMoCzIXLnNlcmlhbGxpbmsudjEuUG9ydE'
    'luZm9SBXBvcnRz');

@$core.Deprecated('Use getPortInfoRequestDescriptor instead')
const GetPortInfoRequest$json = {
  '1': 'GetPortInfoRequest',
  '2': [
    {'1': 'port_name', '3': 1, '4': 1, '5': 9, '10': 'portName'},
  ],
};

/// Descriptor for `GetPortInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPortInfoRequestDescriptor =
    $convert.base64Decode(
        'ChJHZXRQb3J0SW5mb1JlcXVlc3QSGwoJcG9ydF9uYW1lGAEgASgJUghwb3J0TmFtZQ==');

@$core.Deprecated('Use portInfoDescriptor instead')
const PortInfo$json = {
  '1': 'PortInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'hardware_id', '3': 3, '4': 1, '5': 9, '10': 'hardwareId'},
    {'1': 'manufacturer', '3': 4, '4': 1, '5': 9, '10': 'manufacturer'},
    {'1': 'product', '3': 5, '4': 1, '5': 9, '10': 'product'},
    {'1': 'serial_number', '3': 6, '4': 1, '5': 9, '10': 'serialNumber'},
    {
      '1': 'port_type',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.seriallink.v1.PortType',
      '10': 'portType'
    },
    {'1': 'is_open', '3': 8, '4': 1, '5': 8, '10': 'isOpen'},
    {'1': 'locked_by', '3': 9, '4': 1, '5': 9, '10': 'lockedBy'},
  ],
};

/// Descriptor for `PortInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List portInfoDescriptor = $convert.base64Decode(
    'CghQb3J0SW5mbxISCgRuYW1lGAEgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZX'
    'NjcmlwdGlvbhIfCgtoYXJkd2FyZV9pZBgDIAEoCVIKaGFyZHdhcmVJZBIiCgxtYW51ZmFjdHVy'
    'ZXIYBCABKAlSDG1hbnVmYWN0dXJlchIYCgdwcm9kdWN0GAUgASgJUgdwcm9kdWN0EiMKDXNlcm'
    'lhbF9udW1iZXIYBiABKAlSDHNlcmlhbE51bWJlchI0Cglwb3J0X3R5cGUYByABKA4yFy5zZXJp'
    'YWxsaW5rLnYxLlBvcnRUeXBlUghwb3J0VHlwZRIXCgdpc19vcGVuGAggASgIUgZpc09wZW4SGw'
    'oJbG9ja2VkX2J5GAkgASgJUghsb2NrZWRCeQ==');

@$core.Deprecated('Use getPortInfoResponseDescriptor instead')
const GetPortInfoResponse$json = {
  '1': 'GetPortInfoResponse',
  '2': [
    {
      '1': 'port',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.seriallink.v1.PortInfo',
      '10': 'port'
    },
  ],
};

/// Descriptor for `GetPortInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPortInfoResponseDescriptor = $convert.base64Decode(
    'ChNHZXRQb3J0SW5mb1Jlc3BvbnNlEisKBHBvcnQYASABKAsyFy5zZXJpYWxsaW5rLnYxLlBvcn'
    'RJbmZvUgRwb3J0');

@$core.Deprecated('Use openPortRequestDescriptor instead')
const OpenPortRequest$json = {
  '1': 'OpenPortRequest',
  '2': [
    {'1': 'port_name', '3': 1, '4': 1, '5': 9, '10': 'portName'},
    {
      '1': 'config',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.seriallink.v1.PortConfig',
      '10': 'config'
    },
    {'1': 'client_id', '3': 3, '4': 1, '5': 9, '10': 'clientId'},
    {'1': 'exclusive', '3': 4, '4': 1, '5': 8, '10': 'exclusive'},
  ],
};

/// Descriptor for `OpenPortRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openPortRequestDescriptor = $convert.base64Decode(
    'Cg9PcGVuUG9ydFJlcXVlc3QSGwoJcG9ydF9uYW1lGAEgASgJUghwb3J0TmFtZRIxCgZjb25maW'
    'cYAiABKAsyGS5zZXJpYWxsaW5rLnYxLlBvcnRDb25maWdSBmNvbmZpZxIbCgljbGllbnRfaWQY'
    'AyABKAlSCGNsaWVudElkEhwKCWV4Y2x1c2l2ZRgEIAEoCFIJZXhjbHVzaXZl');

@$core.Deprecated('Use openPortResponseDescriptor instead')
const OpenPortResponse$json = {
  '1': 'OpenPortResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'session_id', '3': 3, '4': 1, '5': 9, '10': 'sessionId'},
  ],
};

/// Descriptor for `OpenPortResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openPortResponseDescriptor = $convert.base64Decode(
    'ChBPcGVuUG9ydFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSGAoHbWVzc2FnZR'
    'gCIAEoCVIHbWVzc2FnZRIdCgpzZXNzaW9uX2lkGAMgASgJUglzZXNzaW9uSWQ=');

@$core.Deprecated('Use closePortRequestDescriptor instead')
const ClosePortRequest$json = {
  '1': 'ClosePortRequest',
  '2': [
    {'1': 'port_name', '3': 1, '4': 1, '5': 9, '10': 'portName'},
    {'1': 'session_id', '3': 2, '4': 1, '5': 9, '10': 'sessionId'},
  ],
};

/// Descriptor for `ClosePortRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closePortRequestDescriptor = $convert.base64Decode(
    'ChBDbG9zZVBvcnRSZXF1ZXN0EhsKCXBvcnRfbmFtZRgBIAEoCVIIcG9ydE5hbWUSHQoKc2Vzc2'
    'lvbl9pZBgCIAEoCVIJc2Vzc2lvbklk');

@$core.Deprecated('Use closePortResponseDescriptor instead')
const ClosePortResponse$json = {
  '1': 'ClosePortResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ClosePortResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closePortResponseDescriptor = $convert.base64Decode(
    'ChFDbG9zZVBvcnRSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhgKB21lc3NhZ2'
    'UYAiABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use getPortStatusRequestDescriptor instead')
const GetPortStatusRequest$json = {
  '1': 'GetPortStatusRequest',
  '2': [
    {'1': 'port_name', '3': 1, '4': 1, '5': 9, '10': 'portName'},
  ],
};

/// Descriptor for `GetPortStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPortStatusRequestDescriptor =
    $convert.base64Decode(
        'ChRHZXRQb3J0U3RhdHVzUmVxdWVzdBIbCglwb3J0X25hbWUYASABKAlSCHBvcnROYW1l');

@$core.Deprecated('Use portStatusDescriptor instead')
const PortStatus$json = {
  '1': 'PortStatus',
  '2': [
    {'1': 'port_name', '3': 1, '4': 1, '5': 9, '10': 'portName'},
    {'1': 'is_open', '3': 2, '4': 1, '5': 8, '10': 'isOpen'},
    {'1': 'is_locked', '3': 3, '4': 1, '5': 8, '10': 'isLocked'},
    {'1': 'locked_by', '3': 4, '4': 1, '5': 9, '10': 'lockedBy'},
    {'1': 'session_id', '3': 5, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'current_config',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.seriallink.v1.PortConfig',
      '10': 'currentConfig'
    },
    {
      '1': 'statistics',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.seriallink.v1.PortStatistics',
      '10': 'statistics'
    },
  ],
};

/// Descriptor for `PortStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List portStatusDescriptor = $convert.base64Decode(
    'CgpQb3J0U3RhdHVzEhsKCXBvcnRfbmFtZRgBIAEoCVIIcG9ydE5hbWUSFwoHaXNfb3BlbhgCIA'
    'EoCFIGaXNPcGVuEhsKCWlzX2xvY2tlZBgDIAEoCFIIaXNMb2NrZWQSGwoJbG9ja2VkX2J5GAQg'
    'ASgJUghsb2NrZWRCeRIdCgpzZXNzaW9uX2lkGAUgASgJUglzZXNzaW9uSWQSQAoOY3VycmVudF'
    '9jb25maWcYBiABKAsyGS5zZXJpYWxsaW5rLnYxLlBvcnRDb25maWdSDWN1cnJlbnRDb25maWcS'
    'PQoKc3RhdGlzdGljcxgHIAEoCzIdLnNlcmlhbGxpbmsudjEuUG9ydFN0YXRpc3RpY3NSCnN0YX'
    'Rpc3RpY3M=');

@$core.Deprecated('Use portStatisticsDescriptor instead')
const PortStatistics$json = {
  '1': 'PortStatistics',
  '2': [
    {'1': 'bytes_sent', '3': 1, '4': 1, '5': 4, '10': 'bytesSent'},
    {'1': 'bytes_received', '3': 2, '4': 1, '5': 4, '10': 'bytesReceived'},
    {'1': 'errors', '3': 3, '4': 1, '5': 4, '10': 'errors'},
    {'1': 'opened_at', '3': 4, '4': 1, '5': 3, '10': 'openedAt'},
    {'1': 'last_activity', '3': 5, '4': 1, '5': 3, '10': 'lastActivity'},
  ],
};

/// Descriptor for `PortStatistics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List portStatisticsDescriptor = $convert.base64Decode(
    'Cg5Qb3J0U3RhdGlzdGljcxIdCgpieXRlc19zZW50GAEgASgEUglieXRlc1NlbnQSJQoOYnl0ZX'
    'NfcmVjZWl2ZWQYAiABKARSDWJ5dGVzUmVjZWl2ZWQSFgoGZXJyb3JzGAMgASgEUgZlcnJvcnMS'
    'GwoJb3BlbmVkX2F0GAQgASgDUghvcGVuZWRBdBIjCg1sYXN0X2FjdGl2aXR5GAUgASgDUgxsYX'
    'N0QWN0aXZpdHk=');

@$core.Deprecated('Use getPortStatusResponseDescriptor instead')
const GetPortStatusResponse$json = {
  '1': 'GetPortStatusResponse',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.seriallink.v1.PortStatus',
      '10': 'status'
    },
  ],
};

/// Descriptor for `GetPortStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPortStatusResponseDescriptor = $convert.base64Decode(
    'ChVHZXRQb3J0U3RhdHVzUmVzcG9uc2USMQoGc3RhdHVzGAEgASgLMhkuc2VyaWFsbGluay52MS'
    '5Qb3J0U3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use portConfigDescriptor instead')
const PortConfig$json = {
  '1': 'PortConfig',
  '2': [
    {'1': 'baud_rate', '3': 1, '4': 1, '5': 13, '10': 'baudRate'},
    {
      '1': 'data_bits',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.seriallink.v1.DataBits',
      '10': 'dataBits'
    },
    {
      '1': 'stop_bits',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.seriallink.v1.StopBits',
      '10': 'stopBits'
    },
    {
      '1': 'parity',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.seriallink.v1.Parity',
      '10': 'parity'
    },
    {
      '1': 'flow_control',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.seriallink.v1.FlowControl',
      '10': 'flowControl'
    },
    {'1': 'read_timeout_ms', '3': 6, '4': 1, '5': 13, '10': 'readTimeoutMs'},
    {'1': 'write_timeout_ms', '3': 7, '4': 1, '5': 13, '10': 'writeTimeoutMs'},
  ],
};

/// Descriptor for `PortConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List portConfigDescriptor = $convert.base64Decode(
    'CgpQb3J0Q29uZmlnEhsKCWJhdWRfcmF0ZRgBIAEoDVIIYmF1ZFJhdGUSNAoJZGF0YV9iaXRzGA'
    'IgASgOMhcuc2VyaWFsbGluay52MS5EYXRhQml0c1IIZGF0YUJpdHMSNAoJc3RvcF9iaXRzGAMg'
    'ASgOMhcuc2VyaWFsbGluay52MS5TdG9wQml0c1IIc3RvcEJpdHMSLQoGcGFyaXR5GAQgASgOMh'
    'Uuc2VyaWFsbGluay52MS5QYXJpdHlSBnBhcml0eRI9CgxmbG93X2NvbnRyb2wYBSABKA4yGi5z'
    'ZXJpYWxsaW5rLnYxLkZsb3dDb250cm9sUgtmbG93Q29udHJvbBImCg9yZWFkX3RpbWVvdXRfbX'
    'MYBiABKA1SDXJlYWRUaW1lb3V0TXMSKAoQd3JpdGVfdGltZW91dF9tcxgHIAEoDVIOd3JpdGVU'
    'aW1lb3V0TXM=');

@$core.Deprecated('Use configurePortRequestDescriptor instead')
const ConfigurePortRequest$json = {
  '1': 'ConfigurePortRequest',
  '2': [
    {'1': 'port_name', '3': 1, '4': 1, '5': 9, '10': 'portName'},
    {'1': 'session_id', '3': 2, '4': 1, '5': 9, '10': 'sessionId'},
    {
      '1': 'config',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.seriallink.v1.PortConfig',
      '10': 'config'
    },
  ],
};

/// Descriptor for `ConfigurePortRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configurePortRequestDescriptor = $convert.base64Decode(
    'ChRDb25maWd1cmVQb3J0UmVxdWVzdBIbCglwb3J0X25hbWUYASABKAlSCHBvcnROYW1lEh0KCn'
    'Nlc3Npb25faWQYAiABKAlSCXNlc3Npb25JZBIxCgZjb25maWcYAyABKAsyGS5zZXJpYWxsaW5r'
    'LnYxLlBvcnRDb25maWdSBmNvbmZpZw==');

@$core.Deprecated('Use configurePortResponseDescriptor instead')
const ConfigurePortResponse$json = {
  '1': 'ConfigurePortResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ConfigurePortResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configurePortResponseDescriptor = $convert.base64Decode(
    'ChVDb25maWd1cmVQb3J0UmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIYCgdtZX'
    'NzYWdlGAIgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use getPortConfigRequestDescriptor instead')
const GetPortConfigRequest$json = {
  '1': 'GetPortConfigRequest',
  '2': [
    {'1': 'port_name', '3': 1, '4': 1, '5': 9, '10': 'portName'},
  ],
};

/// Descriptor for `GetPortConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPortConfigRequestDescriptor =
    $convert.base64Decode(
        'ChRHZXRQb3J0Q29uZmlnUmVxdWVzdBIbCglwb3J0X25hbWUYASABKAlSCHBvcnROYW1l');

@$core.Deprecated('Use getPortConfigResponseDescriptor instead')
const GetPortConfigResponse$json = {
  '1': 'GetPortConfigResponse',
  '2': [
    {
      '1': 'config',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.seriallink.v1.PortConfig',
      '10': 'config'
    },
  ],
};

/// Descriptor for `GetPortConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPortConfigResponseDescriptor = $convert.base64Decode(
    'ChVHZXRQb3J0Q29uZmlnUmVzcG9uc2USMQoGY29uZmlnGAEgASgLMhkuc2VyaWFsbGluay52MS'
    '5Qb3J0Q29uZmlnUgZjb25maWc=');

@$core.Deprecated('Use writeRequestDescriptor instead')
const WriteRequest$json = {
  '1': 'WriteRequest',
  '2': [
    {'1': 'port_name', '3': 1, '4': 1, '5': 9, '10': 'portName'},
    {'1': 'session_id', '3': 2, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
    {'1': 'flush', '3': 4, '4': 1, '5': 8, '10': 'flush'},
  ],
};

/// Descriptor for `WriteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List writeRequestDescriptor = $convert.base64Decode(
    'CgxXcml0ZVJlcXVlc3QSGwoJcG9ydF9uYW1lGAEgASgJUghwb3J0TmFtZRIdCgpzZXNzaW9uX2'
    'lkGAIgASgJUglzZXNzaW9uSWQSEgoEZGF0YRgDIAEoDFIEZGF0YRIUCgVmbHVzaBgEIAEoCFIF'
    'Zmx1c2g=');

@$core.Deprecated('Use writeResponseDescriptor instead')
const WriteResponse$json = {
  '1': 'WriteResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'bytes_written', '3': 2, '4': 1, '5': 13, '10': 'bytesWritten'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `WriteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List writeResponseDescriptor = $convert.base64Decode(
    'Cg1Xcml0ZVJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSIwoNYnl0ZXNfd3JpdH'
    'RlbhgCIAEoDVIMYnl0ZXNXcml0dGVuEhgKB21lc3NhZ2UYAyABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use readRequestDescriptor instead')
const ReadRequest$json = {
  '1': 'ReadRequest',
  '2': [
    {'1': 'port_name', '3': 1, '4': 1, '5': 9, '10': 'portName'},
    {'1': 'session_id', '3': 2, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'max_bytes', '3': 3, '4': 1, '5': 13, '10': 'maxBytes'},
    {'1': 'timeout_ms', '3': 4, '4': 1, '5': 13, '10': 'timeoutMs'},
  ],
};

/// Descriptor for `ReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readRequestDescriptor = $convert.base64Decode(
    'CgtSZWFkUmVxdWVzdBIbCglwb3J0X25hbWUYASABKAlSCHBvcnROYW1lEh0KCnNlc3Npb25faW'
    'QYAiABKAlSCXNlc3Npb25JZBIbCgltYXhfYnl0ZXMYAyABKA1SCG1heEJ5dGVzEh0KCnRpbWVv'
    'dXRfbXMYBCABKA1SCXRpbWVvdXRNcw==');

@$core.Deprecated('Use readResponseDescriptor instead')
const ReadResponse$json = {
  '1': 'ReadResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
    {'1': 'bytes_read', '3': 3, '4': 1, '5': 13, '10': 'bytesRead'},
    {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readResponseDescriptor = $convert.base64Decode(
    'CgxSZWFkUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxISCgRkYXRhGAIgASgMUg'
    'RkYXRhEh0KCmJ5dGVzX3JlYWQYAyABKA1SCWJ5dGVzUmVhZBIYCgdtZXNzYWdlGAQgASgJUgdt'
    'ZXNzYWdl');

@$core.Deprecated('Use streamReadRequestDescriptor instead')
const StreamReadRequest$json = {
  '1': 'StreamReadRequest',
  '2': [
    {'1': 'port_name', '3': 1, '4': 1, '5': 9, '10': 'portName'},
    {'1': 'session_id', '3': 2, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'chunk_size', '3': 3, '4': 1, '5': 13, '10': 'chunkSize'},
    {
      '1': 'include_timestamps',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'includeTimestamps'
    },
  ],
};

/// Descriptor for `StreamReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamReadRequestDescriptor = $convert.base64Decode(
    'ChFTdHJlYW1SZWFkUmVxdWVzdBIbCglwb3J0X25hbWUYASABKAlSCHBvcnROYW1lEh0KCnNlc3'
    'Npb25faWQYAiABKAlSCXNlc3Npb25JZBIdCgpjaHVua19zaXplGAMgASgNUgljaHVua1NpemUS'
    'LQoSaW5jbHVkZV90aW1lc3RhbXBzGAQgASgIUhFpbmNsdWRlVGltZXN0YW1wcw==');

@$core.Deprecated('Use dataChunkDescriptor instead')
const DataChunk$json = {
  '1': 'DataChunk',
  '2': [
    {'1': 'port_name', '3': 1, '4': 1, '5': 9, '10': 'portName'},
    {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
    {'1': 'timestamp', '3': 3, '4': 1, '5': 3, '10': 'timestamp'},
    {'1': 'sequence', '3': 4, '4': 1, '5': 13, '10': 'sequence'},
  ],
};

/// Descriptor for `DataChunk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataChunkDescriptor = $convert.base64Decode(
    'CglEYXRhQ2h1bmsSGwoJcG9ydF9uYW1lGAEgASgJUghwb3J0TmFtZRISCgRkYXRhGAIgASgMUg'
    'RkYXRhEhwKCXRpbWVzdGFtcBgDIAEoA1IJdGltZXN0YW1wEhoKCHNlcXVlbmNlGAQgASgNUghz'
    'ZXF1ZW5jZQ==');

@$core.Deprecated('Use streamReadResponseDescriptor instead')
const StreamReadResponse$json = {
  '1': 'StreamReadResponse',
  '2': [
    {
      '1': 'chunk',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.seriallink.v1.DataChunk',
      '10': 'chunk'
    },
  ],
};

/// Descriptor for `StreamReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamReadResponseDescriptor = $convert.base64Decode(
    'ChJTdHJlYW1SZWFkUmVzcG9uc2USLgoFY2h1bmsYASABKAsyGC5zZXJpYWxsaW5rLnYxLkRhdG'
    'FDaHVua1IFY2h1bms=');

@$core.Deprecated('Use streamWriteRequestDescriptor instead')
const StreamWriteRequest$json = {
  '1': 'StreamWriteRequest',
  '2': [
    {
      '1': 'chunk',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.seriallink.v1.DataChunk',
      '10': 'chunk'
    },
  ],
};

/// Descriptor for `StreamWriteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamWriteRequestDescriptor = $convert.base64Decode(
    'ChJTdHJlYW1Xcml0ZVJlcXVlc3QSLgoFY2h1bmsYASABKAsyGC5zZXJpYWxsaW5rLnYxLkRhdG'
    'FDaHVua1IFY2h1bms=');

@$core.Deprecated('Use biDirectionalStreamRequestDescriptor instead')
const BiDirectionalStreamRequest$json = {
  '1': 'BiDirectionalStreamRequest',
  '2': [
    {
      '1': 'chunk',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.seriallink.v1.DataChunk',
      '10': 'chunk'
    },
  ],
};

/// Descriptor for `BiDirectionalStreamRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List biDirectionalStreamRequestDescriptor =
    $convert.base64Decode(
        'ChpCaURpcmVjdGlvbmFsU3RyZWFtUmVxdWVzdBIuCgVjaHVuaxgBIAEoCzIYLnNlcmlhbGxpbm'
        'sudjEuRGF0YUNodW5rUgVjaHVuaw==');

@$core.Deprecated('Use biDirectionalStreamResponseDescriptor instead')
const BiDirectionalStreamResponse$json = {
  '1': 'BiDirectionalStreamResponse',
  '2': [
    {
      '1': 'chunk',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.seriallink.v1.DataChunk',
      '10': 'chunk'
    },
  ],
};

/// Descriptor for `BiDirectionalStreamResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List biDirectionalStreamResponseDescriptor =
    $convert.base64Decode(
        'ChtCaURpcmVjdGlvbmFsU3RyZWFtUmVzcG9uc2USLgoFY2h1bmsYASABKAsyGC5zZXJpYWxsaW'
        '5rLnYxLkRhdGFDaHVua1IFY2h1bms=');

@$core.Deprecated('Use streamWriteResponseDescriptor instead')
const StreamWriteResponse$json = {
  '1': 'StreamWriteResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {
      '1': 'total_bytes_written',
      '3': 2,
      '4': 1,
      '5': 4,
      '10': 'totalBytesWritten'
    },
    {'1': 'chunks_processed', '3': 3, '4': 1, '5': 13, '10': 'chunksProcessed'},
    {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `StreamWriteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamWriteResponseDescriptor = $convert.base64Decode(
    'ChNTdHJlYW1Xcml0ZVJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSLgoTdG90YW'
    'xfYnl0ZXNfd3JpdHRlbhgCIAEoBFIRdG90YWxCeXRlc1dyaXR0ZW4SKQoQY2h1bmtzX3Byb2Nl'
    'c3NlZBgDIAEoDVIPY2h1bmtzUHJvY2Vzc2VkEhgKB21lc3NhZ2UYBCABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use pingRequestDescriptor instead')
const PingRequest$json = {
  '1': 'PingRequest',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `PingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingRequestDescriptor = $convert
    .base64Decode('CgtQaW5nUmVxdWVzdBIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use pingResponseDescriptor instead')
const PingResponse$json = {
  '1': 'PingResponse',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    {'1': 'server_time', '3': 2, '4': 1, '5': 3, '10': 'serverTime'},
  ],
};

/// Descriptor for `PingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingResponseDescriptor = $convert.base64Decode(
    'CgxQaW5nUmVzcG9uc2USGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZRIfCgtzZXJ2ZXJfdGltZR'
    'gCIAEoA1IKc2VydmVyVGltZQ==');

@$core.Deprecated('Use getAgentInfoRequestDescriptor instead')
const GetAgentInfoRequest$json = {
  '1': 'GetAgentInfoRequest',
};

/// Descriptor for `GetAgentInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAgentInfoRequestDescriptor =
    $convert.base64Decode('ChNHZXRBZ2VudEluZm9SZXF1ZXN0');

@$core.Deprecated('Use agentInfoDescriptor instead')
const AgentInfo$json = {
  '1': 'AgentInfo',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'build_commit', '3': 2, '4': 1, '5': 9, '10': 'buildCommit'},
    {'1': 'build_date', '3': 3, '4': 1, '5': 9, '10': 'buildDate'},
    {'1': 'os', '3': 4, '4': 1, '5': 9, '10': 'os'},
    {'1': 'arch', '3': 5, '4': 1, '5': 9, '10': 'arch'},
    {'1': 'uptime_seconds', '3': 6, '4': 1, '5': 3, '10': 'uptimeSeconds'},
    {
      '1': 'supported_features',
      '3': 7,
      '4': 3,
      '5': 9,
      '10': 'supportedFeatures'
    },
    {
      '1': 'config',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.seriallink.v1.AgentConfig',
      '10': 'config'
    },
  ],
};

/// Descriptor for `AgentInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agentInfoDescriptor = $convert.base64Decode(
    'CglBZ2VudEluZm8SGAoHdmVyc2lvbhgBIAEoCVIHdmVyc2lvbhIhCgxidWlsZF9jb21taXQYAi'
    'ABKAlSC2J1aWxkQ29tbWl0Eh0KCmJ1aWxkX2RhdGUYAyABKAlSCWJ1aWxkRGF0ZRIOCgJvcxgE'
    'IAEoCVICb3MSEgoEYXJjaBgFIAEoCVIEYXJjaBIlCg51cHRpbWVfc2Vjb25kcxgGIAEoA1INdX'
    'B0aW1lU2Vjb25kcxItChJzdXBwb3J0ZWRfZmVhdHVyZXMYByADKAlSEXN1cHBvcnRlZEZlYXR1'
    'cmVzEjIKBmNvbmZpZxgIIAEoCzIaLnNlcmlhbGxpbmsudjEuQWdlbnRDb25maWdSBmNvbmZpZw'
    '==');

@$core.Deprecated('Use agentConfigDescriptor instead')
const AgentConfig$json = {
  '1': 'AgentConfig',
  '2': [
    {'1': 'grpc_address', '3': 1, '4': 1, '5': 9, '10': 'grpcAddress'},
    {'1': 'tls_enabled', '3': 2, '4': 1, '5': 8, '10': 'tlsEnabled'},
    {'1': 'max_connections', '3': 3, '4': 1, '5': 13, '10': 'maxConnections'},
  ],
};

/// Descriptor for `AgentConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agentConfigDescriptor = $convert.base64Decode(
    'CgtBZ2VudENvbmZpZxIhCgxncnBjX2FkZHJlc3MYASABKAlSC2dycGNBZGRyZXNzEh8KC3Rsc1'
    '9lbmFibGVkGAIgASgIUgp0bHNFbmFibGVkEicKD21heF9jb25uZWN0aW9ucxgDIAEoDVIObWF4'
    'Q29ubmVjdGlvbnM=');

@$core.Deprecated('Use getAgentInfoResponseDescriptor instead')
const GetAgentInfoResponse$json = {
  '1': 'GetAgentInfoResponse',
  '2': [
    {
      '1': 'info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.seriallink.v1.AgentInfo',
      '10': 'info'
    },
  ],
};

/// Descriptor for `GetAgentInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAgentInfoResponseDescriptor = $convert.base64Decode(
    'ChRHZXRBZ2VudEluZm9SZXNwb25zZRIsCgRpbmZvGAEgASgLMhguc2VyaWFsbGluay52MS5BZ2'
    'VudEluZm9SBGluZm8=');
