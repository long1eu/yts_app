// GENERATED CODE - DO NOT MODIFY BY HAND

part of sending_status;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SendingStatus _$sending = const SendingStatus._('sending');
const SendingStatus _$error = const SendingStatus._('error');
const SendingStatus _$server = const SendingStatus._('server');

SendingStatus _$valueOf(String name) {
  switch (name) {
    case 'sending':
      return _$sending;
    case 'error':
      return _$error;
    case 'server':
      return _$server;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SendingStatus> _$values =
    new BuiltSet<SendingStatus>(const <SendingStatus>[
  _$sending,
  _$error,
  _$server,
]);

Serializer<SendingStatus> _$sendingStatusSerializer =
    new _$SendingStatusSerializer();

class _$SendingStatusSerializer implements PrimitiveSerializer<SendingStatus> {
  @override
  final Iterable<Type> types = const <Type>[SendingStatus];
  @override
  final String wireName = 'SendingStatus';

  @override
  Object serialize(Serializers serializers, SendingStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  SendingStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SendingStatus.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
