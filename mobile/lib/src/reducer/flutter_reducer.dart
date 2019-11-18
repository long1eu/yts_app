// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'package:redux/redux.dart';
import 'package:root/root.dart';

Reducer<FlutterState> reducer = combineReducers<FlutterState>(<Reducer<FlutterState>>[
  TypedReducer<FlutterState, SetImageGrid>(_setImageGrid),
]);

FlutterState _setImageGrid(FlutterState state, SetImageGrid action) {
  return state.rebuild((FlutterStateBuilder b) {
    b.image = action.image.toBuilder();
  });
}
