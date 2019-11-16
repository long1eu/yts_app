// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library bootstrap;

import 'package:built_value/built_value.dart';
import 'package:root/src/models/auth/index.dart';

import '../index.dart';

part 'bootstrap.g.dart';

abstract class Bootstrap //
    implements
        Built<Bootstrap, BootstrapBuilder>,
        AuthAction //
{
  factory Bootstrap() = _$Bootstrap;

  Bootstrap._();
}

abstract class BootstrapSuccessful //
    implements
        Built<BootstrapSuccessful, BootstrapSuccessfulBuilder>,
        AuthAction //
{
  factory BootstrapSuccessful(User user) {
    return _$BootstrapSuccessful((BootstrapSuccessfulBuilder b) => b.user = user?.toBuilder());
  }

  BootstrapSuccessful._();

  User get user;

  @memoized
  bool get isUnauthenticated => user == null;
}

abstract class BootstrapError //
    implements
        Built<BootstrapError, BootstrapErrorBuilder>,
        AuthAction,
        ErrorAction //
{
  factory BootstrapError(Object error) {
    return _$BootstrapError((BootstrapErrorBuilder b) => b.error = error);
  }

  BootstrapError._();

  @override
  Object get error;
}
