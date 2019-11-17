// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

library update_register_data;

import 'package:built_value/built_value.dart';

import '../index.dart';

part 'update_register_data.g.dart';

abstract class UpdateRegisterData //
    implements
        Built<UpdateRegisterData, UpdateRegisterDataBuilder>,
        AuthAction //
{
  factory UpdateRegisterData({String displayName, String password, String photo}) {
    return _$UpdateRegisterData((UpdateRegisterDataBuilder b) {
      b
        ..password = password
        ..photo = photo
        ..displayName = displayName;
    });
  }

  UpdateRegisterData._();

  @nullable
  String get password;

  @nullable
  String get photo;

  @nullable
  String get displayName;
}
