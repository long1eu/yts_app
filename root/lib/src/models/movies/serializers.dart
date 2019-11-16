// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library movies_serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:hive/hive.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();

@HiveTypes(<Type>[])
RegisterHiveType registerHiveTypes = _$registerHiveTypes;
