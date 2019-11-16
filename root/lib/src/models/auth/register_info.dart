// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library register_info;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../index.dart';

part 'register_info.g.dart';

abstract class RegisterInfo implements Built<RegisterInfo, RegisterInfoBuilder> {
  factory RegisterInfo([void Function(RegisterInfoBuilder b) updates]) = _$RegisterInfo;

  factory RegisterInfo.initialState() {
    return _$RegisterInfo();
  }

  factory RegisterInfo.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  RegisterInfo._();

  @nullable
  String get email;

  @nullable
  String get password;

  @nullable
  String get photo;

  @nullable
  String get displayName;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<RegisterInfo> get serializer => _$registerInfoSerializer;
}
