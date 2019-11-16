// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library auth_serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:hive/hive.dart';
import 'package:root/src/models/auth/auth_state.dart';
import 'package:root/src/models/auth/user.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AuthState,
  User,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();

@HiveTypes(<Type>[
  User,
])
RegisterHiveType registerHiveTypes = _$registerHiveTypes;
