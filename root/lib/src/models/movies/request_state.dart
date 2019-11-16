// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library request_state;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import 'serializers.dart';

part 'request_state.g.dart';

@HiveType(typeId: 2)
abstract class RequestState implements Built<RequestState, RequestStateBuilder> {
  factory RequestState([void Function(RequestStateBuilder b) updates]) = _$RequestState;

  factory RequestState.initialState() {
    return _$RequestState((RequestStateBuilder b) {
      b
        ..page = 1
        ..isLoading = false;
    });
  }

  factory RequestState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  RequestState._();

  @HiveField(0)
  int get page;

  @nullable
  @HiveField(1)
  @BuiltValueField(wireName: 'minimum_rating')
  int get minimumRating;

  bool get isLoading;

  RequestState copyWith({
    @required int minimumRating,
  }) {
    return rebuild((RequestStateBuilder b) {
      b.minimumRating = minimumRating ?? this.minimumRating;
    });
  }

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<RequestState> get serializer => _$requestStateSerializer;

  static _$RequestStateAdapter get typeAdapter => _$requestStateTypeAdapter;
}
