// File created by
// Lung Razvan <long1eu>
// on 12/11/2019

library sending_status;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sending_status.g.dart';

class SendingStatus extends EnumClass {
  const SendingStatus._(String name) : super(name);

  static const SendingStatus sending = _$sending;
  static const SendingStatus error = _$error;
  static const SendingStatus server = _$server;

  static BuiltSet<SendingStatus> get values => _$values;

  static SendingStatus valueOf(String name) => _$valueOf(name);

  static Serializer<SendingStatus> get serializer => _$sendingStatusSerializer;
}
