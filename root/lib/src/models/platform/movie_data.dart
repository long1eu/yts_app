// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library movie_data;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive/hive.dart';

import 'index.dart';
import 'serializers.dart';

part 'movie_data.g.dart';

@HiveType(typeId: 4)
abstract class MovieData implements Built<MovieData, MovieDataBuilder> {
  factory MovieData([void Function(MovieDataBuilder b) updates]) = _$MovieData;

  factory MovieData.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  MovieData._();

  @HiveField(0)
  int get id;

  @HiveField(1)
  int get likes;

  BuiltMap<String, Comment> get comments;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<MovieData> get serializer => _$movieDataSerializer;

  static _$MovieDataAdapter get typeAdapter => _$movieDataTypeAdapter;
}
