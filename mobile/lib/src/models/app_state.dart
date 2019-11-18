// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library app_state;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:root/root.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder b) updates]) = _$AppState;

  factory AppState.initialState() {
    return _$AppState((AppStateBuilder b) {
      b
        ..authState = AuthState.initialState().toBuilder()
        ..moviesState = MoviesState.initialState().toBuilder()
        ..platformState = PlatformState.initialState().toBuilder();
    });
  }

  factory AppState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  AppState._();

  AuthState get authState;

  MoviesState get moviesState;

  PlatformState get platformState;

  FlutterState get flutterState;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
