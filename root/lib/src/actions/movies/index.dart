// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:root/src/actions/index.dart';

export 'get_movies.dart';
export 'set_selected_movie.dart';
export 'update_request.dart';

abstract class MoviesAction implements AppAction {
  const MoviesAction();
}

abstract class MoviesActionStart implements MoviesAction {
  const MoviesActionStart();
}

abstract class MoviesActionDone implements MoviesAction {
  const MoviesActionDone();
}
