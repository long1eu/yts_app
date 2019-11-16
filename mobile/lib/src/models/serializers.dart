// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:hive/hive.dart';
import 'package:root/root.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AuthState,
  RegisterInfo,
  User,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();

@HiveTypes(<Type>[
  Comment,
  Movie,
  MovieData,
  RequestState,
  User,
])
RegisterHiveType registerHiveTypes = _$registerHiveTypes;
