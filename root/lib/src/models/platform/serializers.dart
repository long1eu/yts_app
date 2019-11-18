// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library platform_serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:hive/hive.dart';

import 'index.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  Comment,
  MovieData,
  PlatformState,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();

@HiveTypes(<Type>[
  MovieData,
  Comment,
])
RegisterHiveType registerHiveTypes = _$registerHiveTypes;
