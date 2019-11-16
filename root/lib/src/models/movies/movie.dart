// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library movie;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive/hive.dart';

import 'serializers.dart';

part 'movie.g.dart';

@HiveType(typeId: 1)
abstract class Movie implements Built<Movie, MovieBuilder> {
  factory Movie([void Function(MovieBuilder b) updates]) = _$Movie;

  factory Movie.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  Movie._();

  @HiveField(0)
  int get id;

  @HiveField(1)
  String get url;

  @HiveField(2)
  int get year;

  @HiveField(3)
  String get title;

  @HiveField(4)
  double get rating;

  @HiveField(5)
  BuiltList<String> get genres;

  @HiveField(6)
  String get summary;

  @nullable
  @HiveField(7)
  @BuiltValueField(wireName: 'yt_trailer_code')
  String get youtube;

  @HiveField(8)
  @BuiltValueField(wireName: 'medium_cover_image')
  String get smallImage;

  @HiveField(9)
  @BuiltValueField(wireName: 'large_cover_image')
  String get largeImage;

  @HiveField(10)
  @BuiltValueField(wireName: 'background_image_original')
  String get background;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<Movie> get serializer => _$movieSerializer;

  static _$MovieAdapter get typeAdapter => _$movieTypeAdapter;
}
