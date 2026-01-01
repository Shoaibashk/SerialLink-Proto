// This is a generated file - do not edit.
//
// Generated from seriallink/v1/serial.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'serial.pb.dart' as $0;

export 'serial.pb.dart';

/// SerialService provides serial port management and communication operations
@$pb.GrpcServiceName('seriallink.v1.SerialService')
class SerialServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  SerialServiceClient(super.channel, {super.options, super.interceptors});

  /// Port Discovery
  $grpc.ResponseFuture<$0.ListPortsResponse> listPorts(
    $0.ListPortsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listPorts, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetPortInfoResponse> getPortInfo(
    $0.GetPortInfoRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getPortInfo, request, options: options);
  }

  /// Port Management
  $grpc.ResponseFuture<$0.OpenPortResponse> openPort(
    $0.OpenPortRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$openPort, request, options: options);
  }

  $grpc.ResponseFuture<$0.ClosePortResponse> closePort(
    $0.ClosePortRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$closePort, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetPortStatusResponse> getPortStatus(
    $0.GetPortStatusRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getPortStatus, request, options: options);
  }

  /// Data Transfer
  $grpc.ResponseFuture<$0.WriteResponse> write(
    $0.WriteRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$write, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReadResponse> read(
    $0.ReadRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$read, request, options: options);
  }

  /// Streaming
  $grpc.ResponseStream<$0.StreamReadResponse> streamRead(
    $0.StreamReadRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$streamRead, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.StreamWriteResponse> streamWrite(
    $async.Stream<$0.StreamWriteRequest> request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(_$streamWrite, request, options: options)
        .single;
  }

  $grpc.ResponseStream<$0.BiDirectionalStreamResponse> biDirectionalStream(
    $async.Stream<$0.BiDirectionalStreamRequest> request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(_$biDirectionalStream, request,
        options: options);
  }

  /// Port Configuration
  $grpc.ResponseFuture<$0.ConfigurePortResponse> configurePort(
    $0.ConfigurePortRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$configurePort, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetPortConfigResponse> getPortConfig(
    $0.GetPortConfigRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getPortConfig, request, options: options);
  }

  /// Health & Diagnostics
  $grpc.ResponseFuture<$0.PingResponse> ping(
    $0.PingRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$ping, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetAgentInfoResponse> getAgentInfo(
    $0.GetAgentInfoRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAgentInfo, request, options: options);
  }

  // method descriptors

  static final _$listPorts =
      $grpc.ClientMethod<$0.ListPortsRequest, $0.ListPortsResponse>(
          '/seriallink.v1.SerialService/ListPorts',
          ($0.ListPortsRequest value) => value.writeToBuffer(),
          $0.ListPortsResponse.fromBuffer);
  static final _$getPortInfo =
      $grpc.ClientMethod<$0.GetPortInfoRequest, $0.GetPortInfoResponse>(
          '/seriallink.v1.SerialService/GetPortInfo',
          ($0.GetPortInfoRequest value) => value.writeToBuffer(),
          $0.GetPortInfoResponse.fromBuffer);
  static final _$openPort =
      $grpc.ClientMethod<$0.OpenPortRequest, $0.OpenPortResponse>(
          '/seriallink.v1.SerialService/OpenPort',
          ($0.OpenPortRequest value) => value.writeToBuffer(),
          $0.OpenPortResponse.fromBuffer);
  static final _$closePort =
      $grpc.ClientMethod<$0.ClosePortRequest, $0.ClosePortResponse>(
          '/seriallink.v1.SerialService/ClosePort',
          ($0.ClosePortRequest value) => value.writeToBuffer(),
          $0.ClosePortResponse.fromBuffer);
  static final _$getPortStatus =
      $grpc.ClientMethod<$0.GetPortStatusRequest, $0.GetPortStatusResponse>(
          '/seriallink.v1.SerialService/GetPortStatus',
          ($0.GetPortStatusRequest value) => value.writeToBuffer(),
          $0.GetPortStatusResponse.fromBuffer);
  static final _$write = $grpc.ClientMethod<$0.WriteRequest, $0.WriteResponse>(
      '/seriallink.v1.SerialService/Write',
      ($0.WriteRequest value) => value.writeToBuffer(),
      $0.WriteResponse.fromBuffer);
  static final _$read = $grpc.ClientMethod<$0.ReadRequest, $0.ReadResponse>(
      '/seriallink.v1.SerialService/Read',
      ($0.ReadRequest value) => value.writeToBuffer(),
      $0.ReadResponse.fromBuffer);
  static final _$streamRead =
      $grpc.ClientMethod<$0.StreamReadRequest, $0.StreamReadResponse>(
          '/seriallink.v1.SerialService/StreamRead',
          ($0.StreamReadRequest value) => value.writeToBuffer(),
          $0.StreamReadResponse.fromBuffer);
  static final _$streamWrite =
      $grpc.ClientMethod<$0.StreamWriteRequest, $0.StreamWriteResponse>(
          '/seriallink.v1.SerialService/StreamWrite',
          ($0.StreamWriteRequest value) => value.writeToBuffer(),
          $0.StreamWriteResponse.fromBuffer);
  static final _$biDirectionalStream = $grpc.ClientMethod<
          $0.BiDirectionalStreamRequest, $0.BiDirectionalStreamResponse>(
      '/seriallink.v1.SerialService/BiDirectionalStream',
      ($0.BiDirectionalStreamRequest value) => value.writeToBuffer(),
      $0.BiDirectionalStreamResponse.fromBuffer);
  static final _$configurePort =
      $grpc.ClientMethod<$0.ConfigurePortRequest, $0.ConfigurePortResponse>(
          '/seriallink.v1.SerialService/ConfigurePort',
          ($0.ConfigurePortRequest value) => value.writeToBuffer(),
          $0.ConfigurePortResponse.fromBuffer);
  static final _$getPortConfig =
      $grpc.ClientMethod<$0.GetPortConfigRequest, $0.GetPortConfigResponse>(
          '/seriallink.v1.SerialService/GetPortConfig',
          ($0.GetPortConfigRequest value) => value.writeToBuffer(),
          $0.GetPortConfigResponse.fromBuffer);
  static final _$ping = $grpc.ClientMethod<$0.PingRequest, $0.PingResponse>(
      '/seriallink.v1.SerialService/Ping',
      ($0.PingRequest value) => value.writeToBuffer(),
      $0.PingResponse.fromBuffer);
  static final _$getAgentInfo =
      $grpc.ClientMethod<$0.GetAgentInfoRequest, $0.GetAgentInfoResponse>(
          '/seriallink.v1.SerialService/GetAgentInfo',
          ($0.GetAgentInfoRequest value) => value.writeToBuffer(),
          $0.GetAgentInfoResponse.fromBuffer);
}

@$pb.GrpcServiceName('seriallink.v1.SerialService')
abstract class SerialServiceBase extends $grpc.Service {
  $core.String get $name => 'seriallink.v1.SerialService';

  SerialServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListPortsRequest, $0.ListPortsResponse>(
        'ListPorts',
        listPorts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListPortsRequest.fromBuffer(value),
        ($0.ListPortsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetPortInfoRequest, $0.GetPortInfoResponse>(
            'GetPortInfo',
            getPortInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetPortInfoRequest.fromBuffer(value),
            ($0.GetPortInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OpenPortRequest, $0.OpenPortResponse>(
        'OpenPort',
        openPort_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.OpenPortRequest.fromBuffer(value),
        ($0.OpenPortResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ClosePortRequest, $0.ClosePortResponse>(
        'ClosePort',
        closePort_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ClosePortRequest.fromBuffer(value),
        ($0.ClosePortResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetPortStatusRequest, $0.GetPortStatusResponse>(
            'GetPortStatus',
            getPortStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetPortStatusRequest.fromBuffer(value),
            ($0.GetPortStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.WriteRequest, $0.WriteResponse>(
        'Write',
        write_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.WriteRequest.fromBuffer(value),
        ($0.WriteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReadRequest, $0.ReadResponse>(
        'Read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadRequest.fromBuffer(value),
        ($0.ReadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StreamReadRequest, $0.StreamReadResponse>(
        'StreamRead',
        streamRead_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StreamReadRequest.fromBuffer(value),
        ($0.StreamReadResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.StreamWriteRequest, $0.StreamWriteResponse>(
            'StreamWrite',
            streamWrite,
            true,
            false,
            ($core.List<$core.int> value) =>
                $0.StreamWriteRequest.fromBuffer(value),
            ($0.StreamWriteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BiDirectionalStreamRequest,
            $0.BiDirectionalStreamResponse>(
        'BiDirectionalStream',
        biDirectionalStream,
        true,
        true,
        ($core.List<$core.int> value) =>
            $0.BiDirectionalStreamRequest.fromBuffer(value),
        ($0.BiDirectionalStreamResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ConfigurePortRequest, $0.ConfigurePortResponse>(
            'ConfigurePort',
            configurePort_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ConfigurePortRequest.fromBuffer(value),
            ($0.ConfigurePortResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetPortConfigRequest, $0.GetPortConfigResponse>(
            'GetPortConfig',
            getPortConfig_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetPortConfigRequest.fromBuffer(value),
            ($0.GetPortConfigResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PingRequest, $0.PingResponse>(
        'Ping',
        ping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PingRequest.fromBuffer(value),
        ($0.PingResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetAgentInfoRequest, $0.GetAgentInfoResponse>(
            'GetAgentInfo',
            getAgentInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetAgentInfoRequest.fromBuffer(value),
            ($0.GetAgentInfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListPortsResponse> listPorts_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ListPortsRequest> $request) async {
    return listPorts($call, await $request);
  }

  $async.Future<$0.ListPortsResponse> listPorts(
      $grpc.ServiceCall call, $0.ListPortsRequest request);

  $async.Future<$0.GetPortInfoResponse> getPortInfo_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetPortInfoRequest> $request) async {
    return getPortInfo($call, await $request);
  }

  $async.Future<$0.GetPortInfoResponse> getPortInfo(
      $grpc.ServiceCall call, $0.GetPortInfoRequest request);

  $async.Future<$0.OpenPortResponse> openPort_Pre($grpc.ServiceCall $call,
      $async.Future<$0.OpenPortRequest> $request) async {
    return openPort($call, await $request);
  }

  $async.Future<$0.OpenPortResponse> openPort(
      $grpc.ServiceCall call, $0.OpenPortRequest request);

  $async.Future<$0.ClosePortResponse> closePort_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ClosePortRequest> $request) async {
    return closePort($call, await $request);
  }

  $async.Future<$0.ClosePortResponse> closePort(
      $grpc.ServiceCall call, $0.ClosePortRequest request);

  $async.Future<$0.GetPortStatusResponse> getPortStatus_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetPortStatusRequest> $request) async {
    return getPortStatus($call, await $request);
  }

  $async.Future<$0.GetPortStatusResponse> getPortStatus(
      $grpc.ServiceCall call, $0.GetPortStatusRequest request);

  $async.Future<$0.WriteResponse> write_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.WriteRequest> $request) async {
    return write($call, await $request);
  }

  $async.Future<$0.WriteResponse> write(
      $grpc.ServiceCall call, $0.WriteRequest request);

  $async.Future<$0.ReadResponse> read_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.ReadRequest> $request) async {
    return read($call, await $request);
  }

  $async.Future<$0.ReadResponse> read(
      $grpc.ServiceCall call, $0.ReadRequest request);

  $async.Stream<$0.StreamReadResponse> streamRead_Pre($grpc.ServiceCall $call,
      $async.Future<$0.StreamReadRequest> $request) async* {
    yield* streamRead($call, await $request);
  }

  $async.Stream<$0.StreamReadResponse> streamRead(
      $grpc.ServiceCall call, $0.StreamReadRequest request);

  $async.Future<$0.StreamWriteResponse> streamWrite(
      $grpc.ServiceCall call, $async.Stream<$0.StreamWriteRequest> request);

  $async.Stream<$0.BiDirectionalStreamResponse> biDirectionalStream(
      $grpc.ServiceCall call,
      $async.Stream<$0.BiDirectionalStreamRequest> request);

  $async.Future<$0.ConfigurePortResponse> configurePort_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ConfigurePortRequest> $request) async {
    return configurePort($call, await $request);
  }

  $async.Future<$0.ConfigurePortResponse> configurePort(
      $grpc.ServiceCall call, $0.ConfigurePortRequest request);

  $async.Future<$0.GetPortConfigResponse> getPortConfig_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetPortConfigRequest> $request) async {
    return getPortConfig($call, await $request);
  }

  $async.Future<$0.GetPortConfigResponse> getPortConfig(
      $grpc.ServiceCall call, $0.GetPortConfigRequest request);

  $async.Future<$0.PingResponse> ping_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.PingRequest> $request) async {
    return ping($call, await $request);
  }

  $async.Future<$0.PingResponse> ping(
      $grpc.ServiceCall call, $0.PingRequest request);

  $async.Future<$0.GetAgentInfoResponse> getAgentInfo_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetAgentInfoRequest> $request) async {
    return getAgentInfo($call, await $request);
  }

  $async.Future<$0.GetAgentInfoResponse> getAgentInfo(
      $grpc.ServiceCall call, $0.GetAgentInfoRequest request);
}
