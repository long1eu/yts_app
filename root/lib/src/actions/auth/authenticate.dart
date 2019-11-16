// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library authenticate;

import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';
import 'package:root/root.dart';

import '../index.dart';

part 'authenticate.g.dart';

abstract class Authenticate //
    implements
        Built<Authenticate, AuthenticateBuilder>,
        AuthAction //
{
  factory Authenticate({@required CredentialType type, @required ActionResponse response}) {
    return _$Authenticate((AuthenticateBuilder b) {
      b
        ..type = type
        ..response = response;
    });
  }

  Authenticate._();

  CredentialType get type;

  @BuiltValueField(serialize: false, compare: false)
  ActionResponse get response;
}

abstract class AuthenticateSuccessful //
    implements
        Built<AuthenticateSuccessful, AuthenticateSuccessfulBuilder>,
        AuthAction //
{
  factory AuthenticateSuccessful(User user) {
    return _$AuthenticateSuccessful((AuthenticateSuccessfulBuilder b) {
      b.user = user.toBuilder();
    });
  }

  AuthenticateSuccessful._();

  User get user;
}

abstract class AuthenticateError //
    implements
        Built<AuthenticateError, AuthenticateErrorBuilder>,
        AuthAction,
        ErrorAction //
{
  factory AuthenticateError(Object error) {
    return _$AuthenticateError((AuthenticateErrorBuilder b) => b.error = error);
  }

  AuthenticateError._();

  @override
  Object get error;
}
