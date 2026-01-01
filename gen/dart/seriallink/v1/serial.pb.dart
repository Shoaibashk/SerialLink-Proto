// This is a generated file - do not edit.
//
// Generated from seriallink/v1/serial.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'serial.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'serial.pbenum.dart';

class ListPortsRequest extends $pb.GeneratedMessage {
  factory ListPortsRequest({
    $core.bool? onlyAvailable,
  }) {
    final result = create();
    if (onlyAvailable != null) result.onlyAvailable = onlyAvailable;
    return result;
  }

  ListPortsRequest._();

  factory ListPortsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListPortsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListPortsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'onlyAvailable')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPortsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPortsRequest copyWith(void Function(ListPortsRequest) updates) =>
      super.copyWith((message) => updates(message as ListPortsRequest))
          as ListPortsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPortsRequest create() => ListPortsRequest._();
  @$core.override
  ListPortsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListPortsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPortsRequest>(create);
  static ListPortsRequest? _defaultInstance;

  /// Optional filter to include only available (unopened) ports
  @$pb.TagNumber(1)
  $core.bool get onlyAvailable => $_getBF(0);
  @$pb.TagNumber(1)
  set onlyAvailable($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOnlyAvailable() => $_has(0);
  @$pb.TagNumber(1)
  void clearOnlyAvailable() => $_clearField(1);
}

class ListPortsResponse extends $pb.GeneratedMessage {
  factory ListPortsResponse({
    $core.Iterable<PortInfo>? ports,
  }) {
    final result = create();
    if (ports != null) result.ports.addAll(ports);
    return result;
  }

  ListPortsResponse._();

  factory ListPortsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListPortsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListPortsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..pPM<PortInfo>(1, _omitFieldNames ? '' : 'ports',
        subBuilder: PortInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPortsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPortsResponse copyWith(void Function(ListPortsResponse) updates) =>
      super.copyWith((message) => updates(message as ListPortsResponse))
          as ListPortsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPortsResponse create() => ListPortsResponse._();
  @$core.override
  ListPortsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListPortsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPortsResponse>(create);
  static ListPortsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<PortInfo> get ports => $_getList(0);
}

class GetPortInfoRequest extends $pb.GeneratedMessage {
  factory GetPortInfoRequest({
    $core.String? portName,
  }) {
    final result = create();
    if (portName != null) result.portName = portName;
    return result;
  }

  GetPortInfoRequest._();

  factory GetPortInfoRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetPortInfoRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetPortInfoRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'portName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPortInfoRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPortInfoRequest copyWith(void Function(GetPortInfoRequest) updates) =>
      super.copyWith((message) => updates(message as GetPortInfoRequest))
          as GetPortInfoRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPortInfoRequest create() => GetPortInfoRequest._();
  @$core.override
  GetPortInfoRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetPortInfoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPortInfoRequest>(create);
  static GetPortInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get portName => $_getSZ(0);
  @$pb.TagNumber(1)
  set portName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPortName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPortName() => $_clearField(1);
}

class PortInfo extends $pb.GeneratedMessage {
  factory PortInfo({
    $core.String? name,
    $core.String? description,
    $core.String? hardwareId,
    $core.String? manufacturer,
    $core.String? product,
    $core.String? serialNumber,
    PortType? portType,
    $core.bool? isOpen,
    $core.String? lockedBy,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (description != null) result.description = description;
    if (hardwareId != null) result.hardwareId = hardwareId;
    if (manufacturer != null) result.manufacturer = manufacturer;
    if (product != null) result.product = product;
    if (serialNumber != null) result.serialNumber = serialNumber;
    if (portType != null) result.portType = portType;
    if (isOpen != null) result.isOpen = isOpen;
    if (lockedBy != null) result.lockedBy = lockedBy;
    return result;
  }

  PortInfo._();

  factory PortInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PortInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PortInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'hardwareId')
    ..aOS(4, _omitFieldNames ? '' : 'manufacturer')
    ..aOS(5, _omitFieldNames ? '' : 'product')
    ..aOS(6, _omitFieldNames ? '' : 'serialNumber')
    ..aE<PortType>(7, _omitFieldNames ? '' : 'portType',
        enumValues: PortType.values)
    ..aOB(8, _omitFieldNames ? '' : 'isOpen')
    ..aOS(9, _omitFieldNames ? '' : 'lockedBy')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PortInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PortInfo copyWith(void Function(PortInfo) updates) =>
      super.copyWith((message) => updates(message as PortInfo)) as PortInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PortInfo create() => PortInfo._();
  @$core.override
  PortInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PortInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PortInfo>(create);
  static PortInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get hardwareId => $_getSZ(2);
  @$pb.TagNumber(3)
  set hardwareId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHardwareId() => $_has(2);
  @$pb.TagNumber(3)
  void clearHardwareId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get manufacturer => $_getSZ(3);
  @$pb.TagNumber(4)
  set manufacturer($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasManufacturer() => $_has(3);
  @$pb.TagNumber(4)
  void clearManufacturer() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get product => $_getSZ(4);
  @$pb.TagNumber(5)
  set product($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasProduct() => $_has(4);
  @$pb.TagNumber(5)
  void clearProduct() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get serialNumber => $_getSZ(5);
  @$pb.TagNumber(6)
  set serialNumber($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSerialNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearSerialNumber() => $_clearField(6);

  @$pb.TagNumber(7)
  PortType get portType => $_getN(6);
  @$pb.TagNumber(7)
  set portType(PortType value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasPortType() => $_has(6);
  @$pb.TagNumber(7)
  void clearPortType() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isOpen => $_getBF(7);
  @$pb.TagNumber(8)
  set isOpen($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIsOpen() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsOpen() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get lockedBy => $_getSZ(8);
  @$pb.TagNumber(9)
  set lockedBy($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasLockedBy() => $_has(8);
  @$pb.TagNumber(9)
  void clearLockedBy() => $_clearField(9);
}

class GetPortInfoResponse extends $pb.GeneratedMessage {
  factory GetPortInfoResponse({
    PortInfo? port,
  }) {
    final result = create();
    if (port != null) result.port = port;
    return result;
  }

  GetPortInfoResponse._();

  factory GetPortInfoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetPortInfoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetPortInfoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOM<PortInfo>(1, _omitFieldNames ? '' : 'port',
        subBuilder: PortInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPortInfoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPortInfoResponse copyWith(void Function(GetPortInfoResponse) updates) =>
      super.copyWith((message) => updates(message as GetPortInfoResponse))
          as GetPortInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPortInfoResponse create() => GetPortInfoResponse._();
  @$core.override
  GetPortInfoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetPortInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPortInfoResponse>(create);
  static GetPortInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  PortInfo get port => $_getN(0);
  @$pb.TagNumber(1)
  set port(PortInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPort() => $_has(0);
  @$pb.TagNumber(1)
  void clearPort() => $_clearField(1);
  @$pb.TagNumber(1)
  PortInfo ensurePort() => $_ensure(0);
}

class OpenPortRequest extends $pb.GeneratedMessage {
  factory OpenPortRequest({
    $core.String? portName,
    PortConfig? config,
    $core.String? clientId,
    $core.bool? exclusive,
  }) {
    final result = create();
    if (portName != null) result.portName = portName;
    if (config != null) result.config = config;
    if (clientId != null) result.clientId = clientId;
    if (exclusive != null) result.exclusive = exclusive;
    return result;
  }

  OpenPortRequest._();

  factory OpenPortRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OpenPortRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OpenPortRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'portName')
    ..aOM<PortConfig>(2, _omitFieldNames ? '' : 'config',
        subBuilder: PortConfig.create)
    ..aOS(3, _omitFieldNames ? '' : 'clientId')
    ..aOB(4, _omitFieldNames ? '' : 'exclusive')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OpenPortRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OpenPortRequest copyWith(void Function(OpenPortRequest) updates) =>
      super.copyWith((message) => updates(message as OpenPortRequest))
          as OpenPortRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpenPortRequest create() => OpenPortRequest._();
  @$core.override
  OpenPortRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OpenPortRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OpenPortRequest>(create);
  static OpenPortRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get portName => $_getSZ(0);
  @$pb.TagNumber(1)
  set portName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPortName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPortName() => $_clearField(1);

  @$pb.TagNumber(2)
  PortConfig get config => $_getN(1);
  @$pb.TagNumber(2)
  set config(PortConfig value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasConfig() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfig() => $_clearField(2);
  @$pb.TagNumber(2)
  PortConfig ensureConfig() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get clientId => $_getSZ(2);
  @$pb.TagNumber(3)
  set clientId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasClientId() => $_has(2);
  @$pb.TagNumber(3)
  void clearClientId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get exclusive => $_getBF(3);
  @$pb.TagNumber(4)
  set exclusive($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasExclusive() => $_has(3);
  @$pb.TagNumber(4)
  void clearExclusive() => $_clearField(4);
}

class OpenPortResponse extends $pb.GeneratedMessage {
  factory OpenPortResponse({
    $core.bool? success,
    $core.String? message,
    $core.String? sessionId,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (message != null) result.message = message;
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  OpenPortResponse._();

  factory OpenPortResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OpenPortResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OpenPortResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOS(3, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OpenPortResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OpenPortResponse copyWith(void Function(OpenPortResponse) updates) =>
      super.copyWith((message) => updates(message as OpenPortResponse))
          as OpenPortResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpenPortResponse create() => OpenPortResponse._();
  @$core.override
  OpenPortResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OpenPortResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OpenPortResponse>(create);
  static OpenPortResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);
}

class ClosePortRequest extends $pb.GeneratedMessage {
  factory ClosePortRequest({
    $core.String? portName,
    $core.String? sessionId,
  }) {
    final result = create();
    if (portName != null) result.portName = portName;
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  ClosePortRequest._();

  factory ClosePortRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClosePortRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClosePortRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'portName')
    ..aOS(2, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClosePortRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClosePortRequest copyWith(void Function(ClosePortRequest) updates) =>
      super.copyWith((message) => updates(message as ClosePortRequest))
          as ClosePortRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClosePortRequest create() => ClosePortRequest._();
  @$core.override
  ClosePortRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ClosePortRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClosePortRequest>(create);
  static ClosePortRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get portName => $_getSZ(0);
  @$pb.TagNumber(1)
  set portName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPortName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPortName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionId() => $_clearField(2);
}

class ClosePortResponse extends $pb.GeneratedMessage {
  factory ClosePortResponse({
    $core.bool? success,
    $core.String? message,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (message != null) result.message = message;
    return result;
  }

  ClosePortResponse._();

  factory ClosePortResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClosePortResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClosePortResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClosePortResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClosePortResponse copyWith(void Function(ClosePortResponse) updates) =>
      super.copyWith((message) => updates(message as ClosePortResponse))
          as ClosePortResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClosePortResponse create() => ClosePortResponse._();
  @$core.override
  ClosePortResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ClosePortResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClosePortResponse>(create);
  static ClosePortResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

class GetPortStatusRequest extends $pb.GeneratedMessage {
  factory GetPortStatusRequest({
    $core.String? portName,
  }) {
    final result = create();
    if (portName != null) result.portName = portName;
    return result;
  }

  GetPortStatusRequest._();

  factory GetPortStatusRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetPortStatusRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetPortStatusRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'portName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPortStatusRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPortStatusRequest copyWith(void Function(GetPortStatusRequest) updates) =>
      super.copyWith((message) => updates(message as GetPortStatusRequest))
          as GetPortStatusRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPortStatusRequest create() => GetPortStatusRequest._();
  @$core.override
  GetPortStatusRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetPortStatusRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPortStatusRequest>(create);
  static GetPortStatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get portName => $_getSZ(0);
  @$pb.TagNumber(1)
  set portName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPortName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPortName() => $_clearField(1);
}

class PortStatus extends $pb.GeneratedMessage {
  factory PortStatus({
    $core.String? portName,
    $core.bool? isOpen,
    $core.bool? isLocked,
    $core.String? lockedBy,
    $core.String? sessionId,
    PortConfig? currentConfig,
    PortStatistics? statistics,
  }) {
    final result = create();
    if (portName != null) result.portName = portName;
    if (isOpen != null) result.isOpen = isOpen;
    if (isLocked != null) result.isLocked = isLocked;
    if (lockedBy != null) result.lockedBy = lockedBy;
    if (sessionId != null) result.sessionId = sessionId;
    if (currentConfig != null) result.currentConfig = currentConfig;
    if (statistics != null) result.statistics = statistics;
    return result;
  }

  PortStatus._();

  factory PortStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PortStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PortStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'portName')
    ..aOB(2, _omitFieldNames ? '' : 'isOpen')
    ..aOB(3, _omitFieldNames ? '' : 'isLocked')
    ..aOS(4, _omitFieldNames ? '' : 'lockedBy')
    ..aOS(5, _omitFieldNames ? '' : 'sessionId')
    ..aOM<PortConfig>(6, _omitFieldNames ? '' : 'currentConfig',
        subBuilder: PortConfig.create)
    ..aOM<PortStatistics>(7, _omitFieldNames ? '' : 'statistics',
        subBuilder: PortStatistics.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PortStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PortStatus copyWith(void Function(PortStatus) updates) =>
      super.copyWith((message) => updates(message as PortStatus)) as PortStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PortStatus create() => PortStatus._();
  @$core.override
  PortStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PortStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PortStatus>(create);
  static PortStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get portName => $_getSZ(0);
  @$pb.TagNumber(1)
  set portName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPortName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPortName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isOpen => $_getBF(1);
  @$pb.TagNumber(2)
  set isOpen($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsOpen() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsOpen() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isLocked => $_getBF(2);
  @$pb.TagNumber(3)
  set isLocked($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsLocked() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsLocked() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get lockedBy => $_getSZ(3);
  @$pb.TagNumber(4)
  set lockedBy($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLockedBy() => $_has(3);
  @$pb.TagNumber(4)
  void clearLockedBy() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get sessionId => $_getSZ(4);
  @$pb.TagNumber(5)
  set sessionId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSessionId() => $_has(4);
  @$pb.TagNumber(5)
  void clearSessionId() => $_clearField(5);

  @$pb.TagNumber(6)
  PortConfig get currentConfig => $_getN(5);
  @$pb.TagNumber(6)
  set currentConfig(PortConfig value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCurrentConfig() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentConfig() => $_clearField(6);
  @$pb.TagNumber(6)
  PortConfig ensureCurrentConfig() => $_ensure(5);

  @$pb.TagNumber(7)
  PortStatistics get statistics => $_getN(6);
  @$pb.TagNumber(7)
  set statistics(PortStatistics value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasStatistics() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatistics() => $_clearField(7);
  @$pb.TagNumber(7)
  PortStatistics ensureStatistics() => $_ensure(6);
}

class PortStatistics extends $pb.GeneratedMessage {
  factory PortStatistics({
    $fixnum.Int64? bytesSent,
    $fixnum.Int64? bytesReceived,
    $fixnum.Int64? errors,
    $fixnum.Int64? openedAt,
    $fixnum.Int64? lastActivity,
  }) {
    final result = create();
    if (bytesSent != null) result.bytesSent = bytesSent;
    if (bytesReceived != null) result.bytesReceived = bytesReceived;
    if (errors != null) result.errors = errors;
    if (openedAt != null) result.openedAt = openedAt;
    if (lastActivity != null) result.lastActivity = lastActivity;
    return result;
  }

  PortStatistics._();

  factory PortStatistics.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PortStatistics.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PortStatistics',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'bytesSent', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'bytesReceived', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'errors', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(4, _omitFieldNames ? '' : 'openedAt')
    ..aInt64(5, _omitFieldNames ? '' : 'lastActivity')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PortStatistics clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PortStatistics copyWith(void Function(PortStatistics) updates) =>
      super.copyWith((message) => updates(message as PortStatistics))
          as PortStatistics;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PortStatistics create() => PortStatistics._();
  @$core.override
  PortStatistics createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PortStatistics getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PortStatistics>(create);
  static PortStatistics? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get bytesSent => $_getI64(0);
  @$pb.TagNumber(1)
  set bytesSent($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBytesSent() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytesSent() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get bytesReceived => $_getI64(1);
  @$pb.TagNumber(2)
  set bytesReceived($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBytesReceived() => $_has(1);
  @$pb.TagNumber(2)
  void clearBytesReceived() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get errors => $_getI64(2);
  @$pb.TagNumber(3)
  set errors($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasErrors() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrors() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get openedAt => $_getI64(3);
  @$pb.TagNumber(4)
  set openedAt($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOpenedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpenedAt() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get lastActivity => $_getI64(4);
  @$pb.TagNumber(5)
  set lastActivity($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLastActivity() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastActivity() => $_clearField(5);
}

class GetPortStatusResponse extends $pb.GeneratedMessage {
  factory GetPortStatusResponse({
    PortStatus? status,
  }) {
    final result = create();
    if (status != null) result.status = status;
    return result;
  }

  GetPortStatusResponse._();

  factory GetPortStatusResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetPortStatusResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetPortStatusResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOM<PortStatus>(1, _omitFieldNames ? '' : 'status',
        subBuilder: PortStatus.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPortStatusResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPortStatusResponse copyWith(
          void Function(GetPortStatusResponse) updates) =>
      super.copyWith((message) => updates(message as GetPortStatusResponse))
          as GetPortStatusResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPortStatusResponse create() => GetPortStatusResponse._();
  @$core.override
  GetPortStatusResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetPortStatusResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPortStatusResponse>(create);
  static GetPortStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  PortStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(PortStatus value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);
  @$pb.TagNumber(1)
  PortStatus ensureStatus() => $_ensure(0);
}

class PortConfig extends $pb.GeneratedMessage {
  factory PortConfig({
    $core.int? baudRate,
    DataBits? dataBits,
    StopBits? stopBits,
    Parity? parity,
    FlowControl? flowControl,
    $core.int? readTimeoutMs,
    $core.int? writeTimeoutMs,
  }) {
    final result = create();
    if (baudRate != null) result.baudRate = baudRate;
    if (dataBits != null) result.dataBits = dataBits;
    if (stopBits != null) result.stopBits = stopBits;
    if (parity != null) result.parity = parity;
    if (flowControl != null) result.flowControl = flowControl;
    if (readTimeoutMs != null) result.readTimeoutMs = readTimeoutMs;
    if (writeTimeoutMs != null) result.writeTimeoutMs = writeTimeoutMs;
    return result;
  }

  PortConfig._();

  factory PortConfig.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PortConfig.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PortConfig',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'baudRate', fieldType: $pb.PbFieldType.OU3)
    ..aE<DataBits>(2, _omitFieldNames ? '' : 'dataBits',
        enumValues: DataBits.values)
    ..aE<StopBits>(3, _omitFieldNames ? '' : 'stopBits',
        enumValues: StopBits.values)
    ..aE<Parity>(4, _omitFieldNames ? '' : 'parity', enumValues: Parity.values)
    ..aE<FlowControl>(5, _omitFieldNames ? '' : 'flowControl',
        enumValues: FlowControl.values)
    ..aI(6, _omitFieldNames ? '' : 'readTimeoutMs',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'writeTimeoutMs',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PortConfig clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PortConfig copyWith(void Function(PortConfig) updates) =>
      super.copyWith((message) => updates(message as PortConfig)) as PortConfig;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PortConfig create() => PortConfig._();
  @$core.override
  PortConfig createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PortConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PortConfig>(create);
  static PortConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get baudRate => $_getIZ(0);
  @$pb.TagNumber(1)
  set baudRate($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBaudRate() => $_has(0);
  @$pb.TagNumber(1)
  void clearBaudRate() => $_clearField(1);

  @$pb.TagNumber(2)
  DataBits get dataBits => $_getN(1);
  @$pb.TagNumber(2)
  set dataBits(DataBits value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDataBits() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataBits() => $_clearField(2);

  @$pb.TagNumber(3)
  StopBits get stopBits => $_getN(2);
  @$pb.TagNumber(3)
  set stopBits(StopBits value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStopBits() => $_has(2);
  @$pb.TagNumber(3)
  void clearStopBits() => $_clearField(3);

  @$pb.TagNumber(4)
  Parity get parity => $_getN(3);
  @$pb.TagNumber(4)
  set parity(Parity value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasParity() => $_has(3);
  @$pb.TagNumber(4)
  void clearParity() => $_clearField(4);

  @$pb.TagNumber(5)
  FlowControl get flowControl => $_getN(4);
  @$pb.TagNumber(5)
  set flowControl(FlowControl value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasFlowControl() => $_has(4);
  @$pb.TagNumber(5)
  void clearFlowControl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get readTimeoutMs => $_getIZ(5);
  @$pb.TagNumber(6)
  set readTimeoutMs($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasReadTimeoutMs() => $_has(5);
  @$pb.TagNumber(6)
  void clearReadTimeoutMs() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get writeTimeoutMs => $_getIZ(6);
  @$pb.TagNumber(7)
  set writeTimeoutMs($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasWriteTimeoutMs() => $_has(6);
  @$pb.TagNumber(7)
  void clearWriteTimeoutMs() => $_clearField(7);
}

class ConfigurePortRequest extends $pb.GeneratedMessage {
  factory ConfigurePortRequest({
    $core.String? portName,
    $core.String? sessionId,
    PortConfig? config,
  }) {
    final result = create();
    if (portName != null) result.portName = portName;
    if (sessionId != null) result.sessionId = sessionId;
    if (config != null) result.config = config;
    return result;
  }

  ConfigurePortRequest._();

  factory ConfigurePortRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConfigurePortRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConfigurePortRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'portName')
    ..aOS(2, _omitFieldNames ? '' : 'sessionId')
    ..aOM<PortConfig>(3, _omitFieldNames ? '' : 'config',
        subBuilder: PortConfig.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigurePortRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigurePortRequest copyWith(void Function(ConfigurePortRequest) updates) =>
      super.copyWith((message) => updates(message as ConfigurePortRequest))
          as ConfigurePortRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigurePortRequest create() => ConfigurePortRequest._();
  @$core.override
  ConfigurePortRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConfigurePortRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConfigurePortRequest>(create);
  static ConfigurePortRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get portName => $_getSZ(0);
  @$pb.TagNumber(1)
  set portName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPortName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPortName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionId() => $_clearField(2);

  @$pb.TagNumber(3)
  PortConfig get config => $_getN(2);
  @$pb.TagNumber(3)
  set config(PortConfig value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasConfig() => $_has(2);
  @$pb.TagNumber(3)
  void clearConfig() => $_clearField(3);
  @$pb.TagNumber(3)
  PortConfig ensureConfig() => $_ensure(2);
}

class ConfigurePortResponse extends $pb.GeneratedMessage {
  factory ConfigurePortResponse({
    $core.bool? success,
    $core.String? message,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (message != null) result.message = message;
    return result;
  }

  ConfigurePortResponse._();

  factory ConfigurePortResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConfigurePortResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConfigurePortResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigurePortResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigurePortResponse copyWith(
          void Function(ConfigurePortResponse) updates) =>
      super.copyWith((message) => updates(message as ConfigurePortResponse))
          as ConfigurePortResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigurePortResponse create() => ConfigurePortResponse._();
  @$core.override
  ConfigurePortResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConfigurePortResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConfigurePortResponse>(create);
  static ConfigurePortResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

class GetPortConfigRequest extends $pb.GeneratedMessage {
  factory GetPortConfigRequest({
    $core.String? portName,
  }) {
    final result = create();
    if (portName != null) result.portName = portName;
    return result;
  }

  GetPortConfigRequest._();

  factory GetPortConfigRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetPortConfigRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetPortConfigRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'portName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPortConfigRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPortConfigRequest copyWith(void Function(GetPortConfigRequest) updates) =>
      super.copyWith((message) => updates(message as GetPortConfigRequest))
          as GetPortConfigRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPortConfigRequest create() => GetPortConfigRequest._();
  @$core.override
  GetPortConfigRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetPortConfigRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPortConfigRequest>(create);
  static GetPortConfigRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get portName => $_getSZ(0);
  @$pb.TagNumber(1)
  set portName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPortName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPortName() => $_clearField(1);
}

class GetPortConfigResponse extends $pb.GeneratedMessage {
  factory GetPortConfigResponse({
    PortConfig? config,
  }) {
    final result = create();
    if (config != null) result.config = config;
    return result;
  }

  GetPortConfigResponse._();

  factory GetPortConfigResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetPortConfigResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetPortConfigResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOM<PortConfig>(1, _omitFieldNames ? '' : 'config',
        subBuilder: PortConfig.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPortConfigResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPortConfigResponse copyWith(
          void Function(GetPortConfigResponse) updates) =>
      super.copyWith((message) => updates(message as GetPortConfigResponse))
          as GetPortConfigResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPortConfigResponse create() => GetPortConfigResponse._();
  @$core.override
  GetPortConfigResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetPortConfigResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPortConfigResponse>(create);
  static GetPortConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  PortConfig get config => $_getN(0);
  @$pb.TagNumber(1)
  set config(PortConfig value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => $_clearField(1);
  @$pb.TagNumber(1)
  PortConfig ensureConfig() => $_ensure(0);
}

class WriteRequest extends $pb.GeneratedMessage {
  factory WriteRequest({
    $core.String? portName,
    $core.String? sessionId,
    $core.List<$core.int>? data,
    $core.bool? flush,
  }) {
    final result = create();
    if (portName != null) result.portName = portName;
    if (sessionId != null) result.sessionId = sessionId;
    if (data != null) result.data = data;
    if (flush != null) result.flush = flush;
    return result;
  }

  WriteRequest._();

  factory WriteRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WriteRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WriteRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'portName')
    ..aOS(2, _omitFieldNames ? '' : 'sessionId')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..aOB(4, _omitFieldNames ? '' : 'flush')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WriteRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WriteRequest copyWith(void Function(WriteRequest) updates) =>
      super.copyWith((message) => updates(message as WriteRequest))
          as WriteRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WriteRequest create() => WriteRequest._();
  @$core.override
  WriteRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WriteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WriteRequest>(create);
  static WriteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get portName => $_getSZ(0);
  @$pb.TagNumber(1)
  set portName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPortName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPortName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get flush => $_getBF(3);
  @$pb.TagNumber(4)
  set flush($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFlush() => $_has(3);
  @$pb.TagNumber(4)
  void clearFlush() => $_clearField(4);
}

class WriteResponse extends $pb.GeneratedMessage {
  factory WriteResponse({
    $core.bool? success,
    $core.int? bytesWritten,
    $core.String? message,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (bytesWritten != null) result.bytesWritten = bytesWritten;
    if (message != null) result.message = message;
    return result;
  }

  WriteResponse._();

  factory WriteResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WriteResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WriteResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aI(2, _omitFieldNames ? '' : 'bytesWritten',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WriteResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WriteResponse copyWith(void Function(WriteResponse) updates) =>
      super.copyWith((message) => updates(message as WriteResponse))
          as WriteResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WriteResponse create() => WriteResponse._();
  @$core.override
  WriteResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WriteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WriteResponse>(create);
  static WriteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get bytesWritten => $_getIZ(1);
  @$pb.TagNumber(2)
  set bytesWritten($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBytesWritten() => $_has(1);
  @$pb.TagNumber(2)
  void clearBytesWritten() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => $_clearField(3);
}

class ReadRequest extends $pb.GeneratedMessage {
  factory ReadRequest({
    $core.String? portName,
    $core.String? sessionId,
    $core.int? maxBytes,
    $core.int? timeoutMs,
  }) {
    final result = create();
    if (portName != null) result.portName = portName;
    if (sessionId != null) result.sessionId = sessionId;
    if (maxBytes != null) result.maxBytes = maxBytes;
    if (timeoutMs != null) result.timeoutMs = timeoutMs;
    return result;
  }

  ReadRequest._();

  factory ReadRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReadRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'portName')
    ..aOS(2, _omitFieldNames ? '' : 'sessionId')
    ..aI(3, _omitFieldNames ? '' : 'maxBytes', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'timeoutMs', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadRequest copyWith(void Function(ReadRequest) updates) =>
      super.copyWith((message) => updates(message as ReadRequest))
          as ReadRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadRequest create() => ReadRequest._();
  @$core.override
  ReadRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadRequest>(create);
  static ReadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get portName => $_getSZ(0);
  @$pb.TagNumber(1)
  set portName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPortName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPortName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxBytes => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxBytes($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxBytes() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxBytes() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get timeoutMs => $_getIZ(3);
  @$pb.TagNumber(4)
  set timeoutMs($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTimeoutMs() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimeoutMs() => $_clearField(4);
}

class ReadResponse extends $pb.GeneratedMessage {
  factory ReadResponse({
    $core.bool? success,
    $core.List<$core.int>? data,
    $core.int? bytesRead,
    $core.String? message,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (data != null) result.data = data;
    if (bytesRead != null) result.bytesRead = bytesRead;
    if (message != null) result.message = message;
    return result;
  }

  ReadResponse._();

  factory ReadResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReadResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..aI(3, _omitFieldNames ? '' : 'bytesRead', fieldType: $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadResponse copyWith(void Function(ReadResponse) updates) =>
      super.copyWith((message) => updates(message as ReadResponse))
          as ReadResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadResponse create() => ReadResponse._();
  @$core.override
  ReadResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReadResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadResponse>(create);
  static ReadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get bytesRead => $_getIZ(2);
  @$pb.TagNumber(3)
  set bytesRead($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBytesRead() => $_has(2);
  @$pb.TagNumber(3)
  void clearBytesRead() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get message => $_getSZ(3);
  @$pb.TagNumber(4)
  set message($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessage() => $_clearField(4);
}

class StreamReadRequest extends $pb.GeneratedMessage {
  factory StreamReadRequest({
    $core.String? portName,
    $core.String? sessionId,
    $core.int? chunkSize,
    $core.bool? includeTimestamps,
  }) {
    final result = create();
    if (portName != null) result.portName = portName;
    if (sessionId != null) result.sessionId = sessionId;
    if (chunkSize != null) result.chunkSize = chunkSize;
    if (includeTimestamps != null) result.includeTimestamps = includeTimestamps;
    return result;
  }

  StreamReadRequest._();

  factory StreamReadRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'portName')
    ..aOS(2, _omitFieldNames ? '' : 'sessionId')
    ..aI(3, _omitFieldNames ? '' : 'chunkSize', fieldType: $pb.PbFieldType.OU3)
    ..aOB(4, _omitFieldNames ? '' : 'includeTimestamps')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadRequest copyWith(void Function(StreamReadRequest) updates) =>
      super.copyWith((message) => updates(message as StreamReadRequest))
          as StreamReadRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadRequest create() => StreamReadRequest._();
  @$core.override
  StreamReadRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamReadRequest>(create);
  static StreamReadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get portName => $_getSZ(0);
  @$pb.TagNumber(1)
  set portName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPortName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPortName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get chunkSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set chunkSize($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasChunkSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearChunkSize() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get includeTimestamps => $_getBF(3);
  @$pb.TagNumber(4)
  set includeTimestamps($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIncludeTimestamps() => $_has(3);
  @$pb.TagNumber(4)
  void clearIncludeTimestamps() => $_clearField(4);
}

class DataChunk extends $pb.GeneratedMessage {
  factory DataChunk({
    $core.String? portName,
    $core.List<$core.int>? data,
    $fixnum.Int64? timestamp,
    $core.int? sequence,
  }) {
    final result = create();
    if (portName != null) result.portName = portName;
    if (data != null) result.data = data;
    if (timestamp != null) result.timestamp = timestamp;
    if (sequence != null) result.sequence = sequence;
    return result;
  }

  DataChunk._();

  factory DataChunk.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DataChunk.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DataChunk',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'portName')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..aInt64(3, _omitFieldNames ? '' : 'timestamp')
    ..aI(4, _omitFieldNames ? '' : 'sequence', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DataChunk clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DataChunk copyWith(void Function(DataChunk) updates) =>
      super.copyWith((message) => updates(message as DataChunk)) as DataChunk;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataChunk create() => DataChunk._();
  @$core.override
  DataChunk createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DataChunk getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataChunk>(create);
  static DataChunk? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get portName => $_getSZ(0);
  @$pb.TagNumber(1)
  set portName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPortName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPortName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timestamp => $_getI64(2);
  @$pb.TagNumber(3)
  set timestamp($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get sequence => $_getIZ(3);
  @$pb.TagNumber(4)
  set sequence($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSequence() => $_has(3);
  @$pb.TagNumber(4)
  void clearSequence() => $_clearField(4);
}

class StreamReadResponse extends $pb.GeneratedMessage {
  factory StreamReadResponse({
    DataChunk? chunk,
  }) {
    final result = create();
    if (chunk != null) result.chunk = chunk;
    return result;
  }

  StreamReadResponse._();

  factory StreamReadResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamReadResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamReadResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOM<DataChunk>(1, _omitFieldNames ? '' : 'chunk',
        subBuilder: DataChunk.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamReadResponse copyWith(void Function(StreamReadResponse) updates) =>
      super.copyWith((message) => updates(message as StreamReadResponse))
          as StreamReadResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamReadResponse create() => StreamReadResponse._();
  @$core.override
  StreamReadResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamReadResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamReadResponse>(create);
  static StreamReadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  DataChunk get chunk => $_getN(0);
  @$pb.TagNumber(1)
  set chunk(DataChunk value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasChunk() => $_has(0);
  @$pb.TagNumber(1)
  void clearChunk() => $_clearField(1);
  @$pb.TagNumber(1)
  DataChunk ensureChunk() => $_ensure(0);
}

class StreamWriteRequest extends $pb.GeneratedMessage {
  factory StreamWriteRequest({
    DataChunk? chunk,
  }) {
    final result = create();
    if (chunk != null) result.chunk = chunk;
    return result;
  }

  StreamWriteRequest._();

  factory StreamWriteRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamWriteRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamWriteRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOM<DataChunk>(1, _omitFieldNames ? '' : 'chunk',
        subBuilder: DataChunk.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteRequest copyWith(void Function(StreamWriteRequest) updates) =>
      super.copyWith((message) => updates(message as StreamWriteRequest))
          as StreamWriteRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamWriteRequest create() => StreamWriteRequest._();
  @$core.override
  StreamWriteRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamWriteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamWriteRequest>(create);
  static StreamWriteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  DataChunk get chunk => $_getN(0);
  @$pb.TagNumber(1)
  set chunk(DataChunk value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasChunk() => $_has(0);
  @$pb.TagNumber(1)
  void clearChunk() => $_clearField(1);
  @$pb.TagNumber(1)
  DataChunk ensureChunk() => $_ensure(0);
}

class BiDirectionalStreamRequest extends $pb.GeneratedMessage {
  factory BiDirectionalStreamRequest({
    DataChunk? chunk,
  }) {
    final result = create();
    if (chunk != null) result.chunk = chunk;
    return result;
  }

  BiDirectionalStreamRequest._();

  factory BiDirectionalStreamRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BiDirectionalStreamRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BiDirectionalStreamRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOM<DataChunk>(1, _omitFieldNames ? '' : 'chunk',
        subBuilder: DataChunk.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BiDirectionalStreamRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BiDirectionalStreamRequest copyWith(
          void Function(BiDirectionalStreamRequest) updates) =>
      super.copyWith(
              (message) => updates(message as BiDirectionalStreamRequest))
          as BiDirectionalStreamRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BiDirectionalStreamRequest create() => BiDirectionalStreamRequest._();
  @$core.override
  BiDirectionalStreamRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BiDirectionalStreamRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BiDirectionalStreamRequest>(create);
  static BiDirectionalStreamRequest? _defaultInstance;

  @$pb.TagNumber(1)
  DataChunk get chunk => $_getN(0);
  @$pb.TagNumber(1)
  set chunk(DataChunk value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasChunk() => $_has(0);
  @$pb.TagNumber(1)
  void clearChunk() => $_clearField(1);
  @$pb.TagNumber(1)
  DataChunk ensureChunk() => $_ensure(0);
}

class BiDirectionalStreamResponse extends $pb.GeneratedMessage {
  factory BiDirectionalStreamResponse({
    DataChunk? chunk,
  }) {
    final result = create();
    if (chunk != null) result.chunk = chunk;
    return result;
  }

  BiDirectionalStreamResponse._();

  factory BiDirectionalStreamResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BiDirectionalStreamResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BiDirectionalStreamResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOM<DataChunk>(1, _omitFieldNames ? '' : 'chunk',
        subBuilder: DataChunk.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BiDirectionalStreamResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BiDirectionalStreamResponse copyWith(
          void Function(BiDirectionalStreamResponse) updates) =>
      super.copyWith(
              (message) => updates(message as BiDirectionalStreamResponse))
          as BiDirectionalStreamResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BiDirectionalStreamResponse create() =>
      BiDirectionalStreamResponse._();
  @$core.override
  BiDirectionalStreamResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BiDirectionalStreamResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BiDirectionalStreamResponse>(create);
  static BiDirectionalStreamResponse? _defaultInstance;

  @$pb.TagNumber(1)
  DataChunk get chunk => $_getN(0);
  @$pb.TagNumber(1)
  set chunk(DataChunk value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasChunk() => $_has(0);
  @$pb.TagNumber(1)
  void clearChunk() => $_clearField(1);
  @$pb.TagNumber(1)
  DataChunk ensureChunk() => $_ensure(0);
}

class StreamWriteResponse extends $pb.GeneratedMessage {
  factory StreamWriteResponse({
    $core.bool? success,
    $fixnum.Int64? totalBytesWritten,
    $core.int? chunksProcessed,
    $core.String? message,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (totalBytesWritten != null) result.totalBytesWritten = totalBytesWritten;
    if (chunksProcessed != null) result.chunksProcessed = chunksProcessed;
    if (message != null) result.message = message;
    return result;
  }

  StreamWriteResponse._();

  factory StreamWriteResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamWriteResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamWriteResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'totalBytesWritten', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(3, _omitFieldNames ? '' : 'chunksProcessed',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamWriteResponse copyWith(void Function(StreamWriteResponse) updates) =>
      super.copyWith((message) => updates(message as StreamWriteResponse))
          as StreamWriteResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamWriteResponse create() => StreamWriteResponse._();
  @$core.override
  StreamWriteResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamWriteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamWriteResponse>(create);
  static StreamWriteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get totalBytesWritten => $_getI64(1);
  @$pb.TagNumber(2)
  set totalBytesWritten($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTotalBytesWritten() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalBytesWritten() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get chunksProcessed => $_getIZ(2);
  @$pb.TagNumber(3)
  set chunksProcessed($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasChunksProcessed() => $_has(2);
  @$pb.TagNumber(3)
  void clearChunksProcessed() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get message => $_getSZ(3);
  @$pb.TagNumber(4)
  set message($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessage() => $_clearField(4);
}

class PingRequest extends $pb.GeneratedMessage {
  factory PingRequest({
    $core.String? message,
  }) {
    final result = create();
    if (message != null) result.message = message;
    return result;
  }

  PingRequest._();

  factory PingRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PingRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PingRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PingRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PingRequest copyWith(void Function(PingRequest) updates) =>
      super.copyWith((message) => updates(message as PingRequest))
          as PingRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingRequest create() => PingRequest._();
  @$core.override
  PingRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PingRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PingRequest>(create);
  static PingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => $_clearField(1);
}

class PingResponse extends $pb.GeneratedMessage {
  factory PingResponse({
    $core.String? message,
    $fixnum.Int64? serverTime,
  }) {
    final result = create();
    if (message != null) result.message = message;
    if (serverTime != null) result.serverTime = serverTime;
    return result;
  }

  PingResponse._();

  factory PingResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PingResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PingResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..aInt64(2, _omitFieldNames ? '' : 'serverTime')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PingResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PingResponse copyWith(void Function(PingResponse) updates) =>
      super.copyWith((message) => updates(message as PingResponse))
          as PingResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingResponse create() => PingResponse._();
  @$core.override
  PingResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PingResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PingResponse>(create);
  static PingResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get serverTime => $_getI64(1);
  @$pb.TagNumber(2)
  set serverTime($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasServerTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearServerTime() => $_clearField(2);
}

class GetAgentInfoRequest extends $pb.GeneratedMessage {
  factory GetAgentInfoRequest() => create();

  GetAgentInfoRequest._();

  factory GetAgentInfoRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAgentInfoRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAgentInfoRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAgentInfoRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAgentInfoRequest copyWith(void Function(GetAgentInfoRequest) updates) =>
      super.copyWith((message) => updates(message as GetAgentInfoRequest))
          as GetAgentInfoRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAgentInfoRequest create() => GetAgentInfoRequest._();
  @$core.override
  GetAgentInfoRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetAgentInfoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAgentInfoRequest>(create);
  static GetAgentInfoRequest? _defaultInstance;
}

class AgentInfo extends $pb.GeneratedMessage {
  factory AgentInfo({
    $core.String? version,
    $core.String? buildCommit,
    $core.String? buildDate,
    $core.String? os,
    $core.String? arch,
    $fixnum.Int64? uptimeSeconds,
    $core.Iterable<$core.String>? supportedFeatures,
    AgentConfig? config,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (buildCommit != null) result.buildCommit = buildCommit;
    if (buildDate != null) result.buildDate = buildDate;
    if (os != null) result.os = os;
    if (arch != null) result.arch = arch;
    if (uptimeSeconds != null) result.uptimeSeconds = uptimeSeconds;
    if (supportedFeatures != null)
      result.supportedFeatures.addAll(supportedFeatures);
    if (config != null) result.config = config;
    return result;
  }

  AgentInfo._();

  factory AgentInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AgentInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AgentInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'buildCommit')
    ..aOS(3, _omitFieldNames ? '' : 'buildDate')
    ..aOS(4, _omitFieldNames ? '' : 'os')
    ..aOS(5, _omitFieldNames ? '' : 'arch')
    ..aInt64(6, _omitFieldNames ? '' : 'uptimeSeconds')
    ..pPS(7, _omitFieldNames ? '' : 'supportedFeatures')
    ..aOM<AgentConfig>(8, _omitFieldNames ? '' : 'config',
        subBuilder: AgentConfig.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AgentInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AgentInfo copyWith(void Function(AgentInfo) updates) =>
      super.copyWith((message) => updates(message as AgentInfo)) as AgentInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AgentInfo create() => AgentInfo._();
  @$core.override
  AgentInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AgentInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AgentInfo>(create);
  static AgentInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get buildCommit => $_getSZ(1);
  @$pb.TagNumber(2)
  set buildCommit($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBuildCommit() => $_has(1);
  @$pb.TagNumber(2)
  void clearBuildCommit() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get buildDate => $_getSZ(2);
  @$pb.TagNumber(3)
  set buildDate($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBuildDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearBuildDate() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get os => $_getSZ(3);
  @$pb.TagNumber(4)
  set os($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOs() => $_has(3);
  @$pb.TagNumber(4)
  void clearOs() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get arch => $_getSZ(4);
  @$pb.TagNumber(5)
  set arch($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasArch() => $_has(4);
  @$pb.TagNumber(5)
  void clearArch() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get uptimeSeconds => $_getI64(5);
  @$pb.TagNumber(6)
  set uptimeSeconds($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUptimeSeconds() => $_has(5);
  @$pb.TagNumber(6)
  void clearUptimeSeconds() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<$core.String> get supportedFeatures => $_getList(6);

  @$pb.TagNumber(8)
  AgentConfig get config => $_getN(7);
  @$pb.TagNumber(8)
  set config(AgentConfig value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasConfig() => $_has(7);
  @$pb.TagNumber(8)
  void clearConfig() => $_clearField(8);
  @$pb.TagNumber(8)
  AgentConfig ensureConfig() => $_ensure(7);
}

class AgentConfig extends $pb.GeneratedMessage {
  factory AgentConfig({
    $core.String? grpcAddress,
    $core.bool? tlsEnabled,
    $core.int? maxConnections,
  }) {
    final result = create();
    if (grpcAddress != null) result.grpcAddress = grpcAddress;
    if (tlsEnabled != null) result.tlsEnabled = tlsEnabled;
    if (maxConnections != null) result.maxConnections = maxConnections;
    return result;
  }

  AgentConfig._();

  factory AgentConfig.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AgentConfig.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AgentConfig',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'grpcAddress')
    ..aOB(2, _omitFieldNames ? '' : 'tlsEnabled')
    ..aI(3, _omitFieldNames ? '' : 'maxConnections',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AgentConfig clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AgentConfig copyWith(void Function(AgentConfig) updates) =>
      super.copyWith((message) => updates(message as AgentConfig))
          as AgentConfig;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AgentConfig create() => AgentConfig._();
  @$core.override
  AgentConfig createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AgentConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AgentConfig>(create);
  static AgentConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get grpcAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set grpcAddress($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGrpcAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearGrpcAddress() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get tlsEnabled => $_getBF(1);
  @$pb.TagNumber(2)
  set tlsEnabled($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTlsEnabled() => $_has(1);
  @$pb.TagNumber(2)
  void clearTlsEnabled() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxConnections => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxConnections($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxConnections() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxConnections() => $_clearField(3);
}

class GetAgentInfoResponse extends $pb.GeneratedMessage {
  factory GetAgentInfoResponse({
    AgentInfo? info,
  }) {
    final result = create();
    if (info != null) result.info = info;
    return result;
  }

  GetAgentInfoResponse._();

  factory GetAgentInfoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAgentInfoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAgentInfoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'seriallink.v1'),
      createEmptyInstance: create)
    ..aOM<AgentInfo>(1, _omitFieldNames ? '' : 'info',
        subBuilder: AgentInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAgentInfoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAgentInfoResponse copyWith(void Function(GetAgentInfoResponse) updates) =>
      super.copyWith((message) => updates(message as GetAgentInfoResponse))
          as GetAgentInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAgentInfoResponse create() => GetAgentInfoResponse._();
  @$core.override
  GetAgentInfoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetAgentInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAgentInfoResponse>(create);
  static GetAgentInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AgentInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(AgentInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  AgentInfo ensureInfo() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
