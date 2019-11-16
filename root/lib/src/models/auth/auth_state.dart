// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library auth_state;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:root/src/models/auth/serializers.dart';

import 'index.dart';
import 'register_info.dart';

part 'auth_state.g.dart';

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  factory AuthState([void Function(AuthStateBuilder b) updates]) = _$AuthState;

  factory AuthState.initialState() {
    return _$AuthState((AuthStateBuilder b) {
      b.registerInfo = RegisterInfo.initialState().toBuilder();
    });
  }

  factory AuthState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  AuthState._();

  User get user;

  RegisterInfo get registerInfo;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<AuthState> get serializer => _$authStateSerializer;
}
