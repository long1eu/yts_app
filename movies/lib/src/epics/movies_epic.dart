// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:meta/meta.dart';
import 'package:movies/src/data/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:root/movies.dart';
import 'package:rxdart/rxdart.dart';

class MoviesEpic {
  const MoviesEpic({@required YtsApi ytsApi})
      : assert(ytsApi != null, 'YtsApi should not be null.'),
        _ytsApi = ytsApi;

  final YtsApi _ytsApi;

  Epic<MoviesState> get epic {
    return combineEpics<MoviesState>(<Epic<MoviesState>>[
      _getMovies,
    ]);
  }

  Stream<MoviesAction> _getMovies(Stream<dynamic> actions, EpicStore<MoviesState> store) {
    return Observable<dynamic>(actions) //
        .whereType<GetMovies>()
        .flatMap((GetMovies action) => Observable<List<Movie>>.fromFuture(_ytsApi.getMovies(store.state.requestState))
            .map<MoviesAction>((List<Movie> movies) => GetMoviesSuccessful(movies))
            .takeUntil(Observable<dynamic>(actions).whereType<UpdateRequest>())
            .onErrorReturnWith((dynamic error) => GetMoviesError(error)));
  }
}
