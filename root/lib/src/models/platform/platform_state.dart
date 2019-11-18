// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library platform_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'index.dart';
import 'serializers.dart';

part 'platform_state.g.dart';

abstract class PlatformState implements Built<PlatformState, PlatformStateBuilder> {
  factory PlatformState([void Function(PlatformStateBuilder b) updates]) = _$PlatformState;

  factory PlatformState.initialState() {
    return _$PlatformState((PlatformStateBuilder b) {
      b.movieData = MapBuilder<int, MovieData>();
    });
  }

  factory PlatformState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  PlatformState._();

  BuiltMap<int, MovieData> get movieData;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<PlatformState> get serializer => _$platformStateSerializer;
}
