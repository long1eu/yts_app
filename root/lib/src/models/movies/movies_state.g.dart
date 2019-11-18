// GENERATED CODE - DO NOT MODIFY BY HAND

part of movies_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MoviesState> _$moviesStateSerializer = new _$MoviesStateSerializer();

class _$MoviesStateSerializer implements StructuredSerializer<MoviesState> {
  @override
  final Iterable<Type> types = const [MoviesState, _$MoviesState];
  @override
  final String wireName = 'MoviesState';

  @override
  Iterable<Object> serialize(Serializers serializers, MoviesState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'movies',
      serializers.serialize(object.movies,
          specifiedType: const FullType(
              BuiltMap, const [const FullType(int), const FullType(Movie)])),
      'requestState',
      serializers.serialize(object.requestState,
          specifiedType: const FullType(RequestState)),
    ];
    if (object.selectedMovieId != null) {
      result
        ..add('selectedMovieId')
        ..add(serializers.serialize(object.selectedMovieId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  MoviesState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MoviesStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'selectedMovieId':
          result.selectedMovieId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'movies':
          result.movies.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(int),
                const FullType(Movie)
              ])) as BuiltMap<dynamic, dynamic>);
          break;
        case 'requestState':
          result.requestState.replace(serializers.deserialize(value,
              specifiedType: const FullType(RequestState)) as RequestState);
          break;
      }
    }

    return result.build();
  }
}

class _$MoviesState extends MoviesState {
  @override
  final int selectedMovieId;
  @override
  final BuiltMap<int, Movie> movies;
  @override
  final RequestState requestState;
  Movie __selectedMovie;
  List<Movie> __moviesList;

  factory _$MoviesState([void Function(MoviesStateBuilder) updates]) =>
      (new MoviesStateBuilder()..update(updates)).build();

  _$MoviesState._({this.selectedMovieId, this.movies, this.requestState})
      : super._() {
    if (movies == null) {
      throw new BuiltValueNullFieldError('MoviesState', 'movies');
    }
    if (requestState == null) {
      throw new BuiltValueNullFieldError('MoviesState', 'requestState');
    }
  }

  @override
  Movie get selectedMovie => __selectedMovie ??= super.selectedMovie;

  @override
  List<Movie> get moviesList => __moviesList ??= super.moviesList;

  @override
  MoviesState rebuild(void Function(MoviesStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoviesStateBuilder toBuilder() => new MoviesStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoviesState &&
        selectedMovieId == other.selectedMovieId &&
        movies == other.movies &&
        requestState == other.requestState;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, selectedMovieId.hashCode), movies.hashCode),
        requestState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MoviesState')
          ..add('selectedMovieId', selectedMovieId)
          ..add('movies', movies)
          ..add('requestState', requestState))
        .toString();
  }
}

class MoviesStateBuilder implements Builder<MoviesState, MoviesStateBuilder> {
  _$MoviesState _$v;

  int _selectedMovieId;
  int get selectedMovieId => _$this._selectedMovieId;
  set selectedMovieId(int selectedMovieId) =>
      _$this._selectedMovieId = selectedMovieId;

  MapBuilder<int, Movie> _movies;
  MapBuilder<int, Movie> get movies =>
      _$this._movies ??= new MapBuilder<int, Movie>();
  set movies(MapBuilder<int, Movie> movies) => _$this._movies = movies;

  RequestStateBuilder _requestState;
  RequestStateBuilder get requestState =>
      _$this._requestState ??= new RequestStateBuilder();
  set requestState(RequestStateBuilder requestState) =>
      _$this._requestState = requestState;

  MoviesStateBuilder();

  MoviesStateBuilder get _$this {
    if (_$v != null) {
      _selectedMovieId = _$v.selectedMovieId;
      _movies = _$v.movies?.toBuilder();
      _requestState = _$v.requestState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoviesState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MoviesState;
  }

  @override
  void update(void Function(MoviesStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MoviesState build() {
    _$MoviesState _$result;
    try {
      _$result = _$v ??
          new _$MoviesState._(
              selectedMovieId: selectedMovieId,
              movies: movies.build(),
              requestState: requestState.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'movies';
        movies.build();
        _$failedField = 'requestState';
        requestState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MoviesState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
