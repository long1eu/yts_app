// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

library flutter_state;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'image_grid.dart';
import 'serializers.dart';

part 'flutter_state.g.dart';

abstract class FlutterState implements Built<FlutterState, FlutterStateBuilder> {
  factory FlutterState([void Function(FlutterStateBuilder b) updates]) = _$FlutterState;

  factory FlutterState.initialState() {
    return _$FlutterState();
  }

  factory FlutterState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  FlutterState._();

  @nullable
  ImageGrid get image;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<FlutterState> get serializer => _$flutterStateSerializer;
}
