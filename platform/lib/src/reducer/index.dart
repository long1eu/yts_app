// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:redux/redux.dart';
import 'package:root/platform.dart';
import 'package:root/root.dart';

final Reducer<PlatformState> reducer = combineReducers(<Reducer<PlatformState>>[
  TypedReducer<PlatformState, SetSelectedMovieId>(_setSelectedMovieId),
  TypedReducer<PlatformState, OnCommentsEvent>(_onCommentsEvent),
  TypedReducer<PlatformState, SendCommentAction>(_sendCommentAction),
]);

PlatformState _setSelectedMovieId(PlatformState state, SetSelectedMovieId action) {
  return state.rebuild((PlatformStateBuilder b) {
    b.selectedMovieId = action.movieId;
  });
}

PlatformState _onCommentsEvent(PlatformState state, OnCommentsEvent action) {
  return state.rebuild((PlatformStateBuilder b) {
    final MovieData movieData = state.movieData[action.movieId];
    b.movieData[action.movieId] = movieData.rebuild((MovieDataBuilder b) {
      b.comments = listenEventReducer<Comment>(movieData.comments, action).toBuilder();
    });
  });
}

PlatformState _sendCommentAction(PlatformState state, SendCommentAction action) {
  return state.rebuild((PlatformStateBuilder b) {
    final Comment comment = action.comment;
    b.movieData[comment.movieId] = state.movieData[comment.movieId].rebuild((MovieDataBuilder b) {
      b.comments[comment.id] = comment;
    });
  });
}
