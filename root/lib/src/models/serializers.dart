// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'auth/serializers.dart' as auth;
import 'movies/serializers.dart' as movies;
import 'platform/serializers.dart' as platform;

part 'serializers.g.dart';

@SerializersFor(<Type>[])
Serializers serializers = (_$serializers.toBuilder() //
      ..addAll(auth.serializers.serializers)
      ..addAll(movies.serializers.serializers)
      ..addAll(platform.serializers.serializers)
      ..addPlugin(StandardJsonPlugin()))
    .build();

void registerHiveTypes() {
  auth.registerHiveTypes();
  movies.registerHiveTypes();
  platform.registerHiveTypes();
}
