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

import 'package:protobuf/protobuf.dart' as $pb;

class PortType extends $pb.ProtobufEnum {
  static const PortType PORT_TYPE_UNSPECIFIED =
      PortType._(0, _omitEnumNames ? '' : 'PORT_TYPE_UNSPECIFIED');
  static const PortType PORT_TYPE_USB =
      PortType._(1, _omitEnumNames ? '' : 'PORT_TYPE_USB');
  static const PortType PORT_TYPE_NATIVE =
      PortType._(2, _omitEnumNames ? '' : 'PORT_TYPE_NATIVE');
  static const PortType PORT_TYPE_BLUETOOTH =
      PortType._(3, _omitEnumNames ? '' : 'PORT_TYPE_BLUETOOTH');
  static const PortType PORT_TYPE_VIRTUAL =
      PortType._(4, _omitEnumNames ? '' : 'PORT_TYPE_VIRTUAL');

  static const $core.List<PortType> values = <PortType>[
    PORT_TYPE_UNSPECIFIED,
    PORT_TYPE_USB,
    PORT_TYPE_NATIVE,
    PORT_TYPE_BLUETOOTH,
    PORT_TYPE_VIRTUAL,
  ];

  static final $core.List<PortType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static PortType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PortType._(super.value, super.name);
}

class DataBits extends $pb.ProtobufEnum {
  static const DataBits DATA_BITS_UNSPECIFIED =
      DataBits._(0, _omitEnumNames ? '' : 'DATA_BITS_UNSPECIFIED');
  static const DataBits DATA_BITS_5 =
      DataBits._(5, _omitEnumNames ? '' : 'DATA_BITS_5');
  static const DataBits DATA_BITS_6 =
      DataBits._(6, _omitEnumNames ? '' : 'DATA_BITS_6');
  static const DataBits DATA_BITS_7 =
      DataBits._(7, _omitEnumNames ? '' : 'DATA_BITS_7');
  static const DataBits DATA_BITS_8 =
      DataBits._(8, _omitEnumNames ? '' : 'DATA_BITS_8');

  static const $core.List<DataBits> values = <DataBits>[
    DATA_BITS_UNSPECIFIED,
    DATA_BITS_5,
    DATA_BITS_6,
    DATA_BITS_7,
    DATA_BITS_8,
  ];

  static final $core.Map<$core.int, DataBits> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static DataBits? valueOf($core.int value) => _byValue[value];

  const DataBits._(super.value, super.name);
}

class StopBits extends $pb.ProtobufEnum {
  static const StopBits STOP_BITS_UNSPECIFIED =
      StopBits._(0, _omitEnumNames ? '' : 'STOP_BITS_UNSPECIFIED');
  static const StopBits STOP_BITS_1 =
      StopBits._(1, _omitEnumNames ? '' : 'STOP_BITS_1');
  static const StopBits STOP_BITS_1_5 =
      StopBits._(2, _omitEnumNames ? '' : 'STOP_BITS_1_5');
  static const StopBits STOP_BITS_2 =
      StopBits._(3, _omitEnumNames ? '' : 'STOP_BITS_2');

  static const $core.List<StopBits> values = <StopBits>[
    STOP_BITS_UNSPECIFIED,
    STOP_BITS_1,
    STOP_BITS_1_5,
    STOP_BITS_2,
  ];

  static final $core.List<StopBits?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static StopBits? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const StopBits._(super.value, super.name);
}

class Parity extends $pb.ProtobufEnum {
  static const Parity PARITY_UNSPECIFIED =
      Parity._(0, _omitEnumNames ? '' : 'PARITY_UNSPECIFIED');
  static const Parity PARITY_NONE =
      Parity._(1, _omitEnumNames ? '' : 'PARITY_NONE');
  static const Parity PARITY_ODD =
      Parity._(2, _omitEnumNames ? '' : 'PARITY_ODD');
  static const Parity PARITY_EVEN =
      Parity._(3, _omitEnumNames ? '' : 'PARITY_EVEN');
  static const Parity PARITY_MARK =
      Parity._(4, _omitEnumNames ? '' : 'PARITY_MARK');
  static const Parity PARITY_SPACE =
      Parity._(5, _omitEnumNames ? '' : 'PARITY_SPACE');

  static const $core.List<Parity> values = <Parity>[
    PARITY_UNSPECIFIED,
    PARITY_NONE,
    PARITY_ODD,
    PARITY_EVEN,
    PARITY_MARK,
    PARITY_SPACE,
  ];

  static final $core.List<Parity?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static Parity? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Parity._(super.value, super.name);
}

class FlowControl extends $pb.ProtobufEnum {
  static const FlowControl FLOW_CONTROL_UNSPECIFIED =
      FlowControl._(0, _omitEnumNames ? '' : 'FLOW_CONTROL_UNSPECIFIED');
  static const FlowControl FLOW_CONTROL_NONE =
      FlowControl._(1, _omitEnumNames ? '' : 'FLOW_CONTROL_NONE');
  static const FlowControl FLOW_CONTROL_HARDWARE =
      FlowControl._(2, _omitEnumNames ? '' : 'FLOW_CONTROL_HARDWARE');
  static const FlowControl FLOW_CONTROL_SOFTWARE =
      FlowControl._(3, _omitEnumNames ? '' : 'FLOW_CONTROL_SOFTWARE');

  static const $core.List<FlowControl> values = <FlowControl>[
    FLOW_CONTROL_UNSPECIFIED,
    FLOW_CONTROL_NONE,
    FLOW_CONTROL_HARDWARE,
    FLOW_CONTROL_SOFTWARE,
  ];

  static final $core.List<FlowControl?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static FlowControl? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FlowControl._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
