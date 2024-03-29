// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library user;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive/hive.dart';
import 'package:root/flutter.dart';
import 'package:root/src/models/auth/serializers.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
abstract class User implements Built<User, UserBuilder> {
  factory User([void Function(UserBuilder b) updates]) = _$User;

  factory User.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  User._();

  @HiveField(0)
  String get uid;

  @HiveField(1)
  String get email;

  @nullable
  @HiveField(2)
  String get photo;

  @HiveField(3)
  String get displayName;

  @memoized
  ImageGrid get image => !photo.startsWith('http') ? ImageGrid.fromEncoded(photo) : null;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<User> get serializer => _$userSerializer;

  static _$UserAdapter get typeAdapter => _$userTypeAdapter;
}
