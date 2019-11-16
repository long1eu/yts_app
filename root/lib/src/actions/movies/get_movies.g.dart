// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_movies;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetMovies extends GetMovies {
  factory _$GetMovies([void Function(GetMoviesBuilder) updates]) =>
      (new GetMoviesBuilder()..update(updates)).build();

  _$GetMovies._() : super._();

  @override
  GetMovies rebuild(void Function(GetMoviesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMoviesBuilder toBuilder() => new GetMoviesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMovies;
  }

  @override
  int get hashCode {
    return 583246099;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetMovies').toString();
  }
}

class GetMoviesBuilder implements Builder<GetMovies, GetMoviesBuilder> {
  _$GetMovies _$v;

  GetMoviesBuilder();

  @override
  void replace(GetMovies other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetMovies;
  }

  @override
  void update(void Function(GetMoviesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetMovies build() {
    final _$result = _$v ?? new _$GetMovies._();
    replace(_$result);
    return _$result;
  }
}

class _$GetMoviesSuccessful extends GetMoviesSuccessful {
  @override
  final BuiltList<Movie> movies;

  factory _$GetMoviesSuccessful(
          [void Function(GetMoviesSuccessfulBuilder) updates]) =>
      (new GetMoviesSuccessfulBuilder()..update(updates)).build();

  _$GetMoviesSuccessful._({this.movies}) : super._() {
    if (movies == null) {
      throw new BuiltValueNullFieldError('GetMoviesSuccessful', 'movies');
    }
  }

  @override
  GetMoviesSuccessful rebuild(
          void Function(GetMoviesSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMoviesSuccessfulBuilder toBuilder() =>
      new GetMoviesSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMoviesSuccessful && movies == other.movies;
  }

  @override
  int get hashCode {
    return $jf($jc(0, movies.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetMoviesSuccessful')
          ..add('movies', movies))
        .toString();
  }
}

class GetMoviesSuccessfulBuilder
    implements Builder<GetMoviesSuccessful, GetMoviesSuccessfulBuilder> {
  _$GetMoviesSuccessful _$v;

  ListBuilder<Movie> _movies;
  ListBuilder<Movie> get movies => _$this._movies ??= new ListBuilder<Movie>();
  set movies(ListBuilder<Movie> movies) => _$this._movies = movies;

  GetMoviesSuccessfulBuilder();

  GetMoviesSuccessfulBuilder get _$this {
    if (_$v != null) {
      _movies = _$v.movies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMoviesSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetMoviesSuccessful;
  }

  @override
  void update(void Function(GetMoviesSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetMoviesSuccessful build() {
    _$GetMoviesSuccessful _$result;
    try {
      _$result = _$v ?? new _$GetMoviesSuccessful._(movies: movies.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'movies';
        movies.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetMoviesSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetMoviesError extends GetMoviesError {
  @override
  final Object error;

  factory _$GetMoviesError([void Function(GetMoviesErrorBuilder) updates]) =>
      (new GetMoviesErrorBuilder()..update(updates)).build();

  _$GetMoviesError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('GetMoviesError', 'error');
    }
  }

  @override
  GetMoviesError rebuild(void Function(GetMoviesErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMoviesErrorBuilder toBuilder() =>
      new GetMoviesErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMoviesError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetMoviesError')..add('error', error))
        .toString();
  }
}

class GetMoviesErrorBuilder
    implements Builder<GetMoviesError, GetMoviesErrorBuilder> {
  _$GetMoviesError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  GetMoviesErrorBuilder();

  GetMoviesErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMoviesError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetMoviesError;
  }

  @override
  void update(void Function(GetMoviesErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetMoviesError build() {
    final _$result = _$v ?? new _$GetMoviesError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
