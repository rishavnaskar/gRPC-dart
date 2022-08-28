///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class VoidNoParam extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VoidNoParam', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'dartgrpctutorial'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  VoidNoParam._() : super();
  factory VoidNoParam() => create();
  factory VoidNoParam.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VoidNoParam.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VoidNoParam clone() => VoidNoParam()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VoidNoParam copyWith(void Function(VoidNoParam) updates) => super.copyWith((message) => updates(message as VoidNoParam)) as VoidNoParam; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VoidNoParam create() => VoidNoParam._();
  VoidNoParam createEmptyInstance() => create();
  static $pb.PbList<VoidNoParam> createRepeated() => $pb.PbList<VoidNoParam>();
  @$core.pragma('dart2js:noInline')
  static VoidNoParam getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VoidNoParam>(create);
  static VoidNoParam? _defaultInstance;
}

class TodoItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TodoItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'dartgrpctutorial'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..hasRequiredFields = false
  ;

  TodoItem._() : super();
  factory TodoItem() => create();
  factory TodoItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TodoItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TodoItem clone() => TodoItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TodoItem copyWith(void Function(TodoItem) updates) => super.copyWith((message) => updates(message as TodoItem)) as TodoItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TodoItem create() => TodoItem._();
  TodoItem createEmptyInstance() => create();
  static $pb.PbList<TodoItem> createRepeated() => $pb.PbList<TodoItem>();
  @$core.pragma('dart2js:noInline')
  static TodoItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoItem>(create);
  static TodoItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);
}

class TodoItems extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TodoItems', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'dartgrpctutorial'), createEmptyInstance: create)
    ..pc<TodoItem>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: TodoItem.create)
    ..hasRequiredFields = false
  ;

  TodoItems._() : super();
  factory TodoItems() => create();
  factory TodoItems.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TodoItems.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TodoItems clone() => TodoItems()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TodoItems copyWith(void Function(TodoItems) updates) => super.copyWith((message) => updates(message as TodoItems)) as TodoItems; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TodoItems create() => TodoItems._();
  TodoItems createEmptyInstance() => create();
  static $pb.PbList<TodoItems> createRepeated() => $pb.PbList<TodoItems>();
  @$core.pragma('dart2js:noInline')
  static TodoItems getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoItems>(create);
  static TodoItems? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TodoItem> get items => $_getList(0);
}

