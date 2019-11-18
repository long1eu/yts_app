// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobile/src/models/app_state.dart';
import 'package:redux/redux.dart';
import 'package:root/movies.dart';

class MoviesContainer extends StatelessWidget {
  const MoviesContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Movie> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Movie>(
      converter: (Store<AppState> store) {
        final int selectedMovie = store.state.platformState.selectedMovieId;
        return store.state.moviesState.movies[selectedMovie];
      },
      builder: builder,
    );
  }
}
