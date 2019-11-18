// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:redux/redux.dart';
import 'package:root/movies.dart';

final Reducer<MoviesState> reducer = combineReducers(<Reducer<MoviesState>>[
  TypedReducer<MoviesState, MoviesActionStart>(_moviesActionStart),
  TypedReducer<MoviesState, MoviesActionDone>(_moviesActionDone),
  TypedReducer<MoviesState, GetMoviesSuccessful>(_getMoviesSuccessful),
  TypedReducer<MoviesState, UpdateRequest>(_updateRequest),
  TypedReducer<MoviesState, SetSelectedMovieId>(_setSelectedMovieId),
]);

MoviesState _moviesActionStart(MoviesState state, MoviesActionStart action) {
  return state.rebuild((MoviesStateBuilder b) {
    b.requestState.update((RequestStateBuilder b) => b.isLoading = true);
  });
}

MoviesState _moviesActionDone(MoviesState state, MoviesActionDone action) {
  return state.rebuild((MoviesStateBuilder b) {
    b.requestState.update((RequestStateBuilder b) => b.isLoading = false);
  });
}

MoviesState _getMoviesSuccessful(MoviesState state, GetMoviesSuccessful action) {
  return state.rebuild((MoviesStateBuilder b) {
    for (Movie movie in action.movies) {
      b.movies[movie.id] = movie;
    }
  });
}

MoviesState _updateRequest(MoviesState state, UpdateRequest action) {
  return state.rebuild((MoviesStateBuilder b) {
    b.requestState
      ..replace(action.request)
      ..page = 1
      ..isLoading = false;
  });
}

MoviesState _setSelectedMovieId(MoviesState state, SetSelectedMovieId action) {
  return state.rebuild((MoviesStateBuilder b) {
    b.selectedMovieId = action.movieId;
  });
}
