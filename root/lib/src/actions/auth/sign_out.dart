library sign_out;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:root/src/actions/index.dart';

import 'index.dart';

part 'sign_out.g.dart';

abstract class SignOut //
    implements
        Built<SignOut, SignOutBuilder>,
        AuthAction //
{
  factory SignOut([void Function(SignOutBuilder b) updates]) = _$SignOut;

  SignOut._();
}

abstract class SignOutSuccessful //
    implements
        Built<SignOutSuccessful, SignOutSuccessfulBuilder>,
        AuthAction //
{
  factory SignOutSuccessful([void Function(SignOutSuccessfulBuilder b) updates]) = _$SignOutSuccessful;

  SignOutSuccessful._();
}

abstract class SignOutError //
    implements
        Built<SignOutError, SignOutErrorBuilder>,
        AuthAction,
        ErrorAction //
{
  factory SignOutError(Object error) {
    return _$SignOutError((SignOutErrorBuilder b) => b.error = error);
  }

  SignOutError._();

  @override
  Object get error;
}
