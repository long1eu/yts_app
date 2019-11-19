// GENERATED CODE - DO NOT MODIFY BY HAND

part of add_like;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddLike extends AddLike {
  @override
  final int movieId;

  factory _$AddLike([void Function(AddLikeBuilder) updates]) =>
      (new AddLikeBuilder()..update(updates)).build();

  _$AddLike._({this.movieId}) : super._() {
    if (movieId == null) {
      throw new BuiltValueNullFieldError('AddLike', 'movieId');
    }
  }

  @override
  AddLike rebuild(void Function(AddLikeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddLikeBuilder toBuilder() => new AddLikeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddLike && movieId == other.movieId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, movieId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddLike')..add('movieId', movieId))
        .toString();
  }
}

class AddLikeBuilder implements Builder<AddLike, AddLikeBuilder> {
  _$AddLike _$v;

  int _movieId;
  int get movieId => _$this._movieId;
  set movieId(int movieId) => _$this._movieId = movieId;

  AddLikeBuilder();

  AddLikeBuilder get _$this {
    if (_$v != null) {
      _movieId = _$v.movieId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddLike other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddLike;
  }

  @override
  void update(void Function(AddLikeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddLike build() {
    final _$result = _$v ?? new _$AddLike._(movieId: movieId);
    replace(_$result);
    return _$result;
  }
}

class _$AddLikeSuccessful extends AddLikeSuccessful {
  factory _$AddLikeSuccessful(
          [void Function(AddLikeSuccessfulBuilder) updates]) =>
      (new AddLikeSuccessfulBuilder()..update(updates)).build();

  _$AddLikeSuccessful._() : super._();

  @override
  AddLikeSuccessful rebuild(void Function(AddLikeSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddLikeSuccessfulBuilder toBuilder() =>
      new AddLikeSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddLikeSuccessful;
  }

  @override
  int get hashCode {
    return 66841663;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('AddLikeSuccessful').toString();
  }
}

class AddLikeSuccessfulBuilder
    implements Builder<AddLikeSuccessful, AddLikeSuccessfulBuilder> {
  _$AddLikeSuccessful _$v;

  AddLikeSuccessfulBuilder();

  @override
  void replace(AddLikeSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddLikeSuccessful;
  }

  @override
  void update(void Function(AddLikeSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddLikeSuccessful build() {
    final _$result = _$v ?? new _$AddLikeSuccessful._();
    replace(_$result);
    return _$result;
  }
}

class _$AddLikeError extends AddLikeError {
  @override
  final Object error;
  @override
  final int movieId;

  factory _$AddLikeError([void Function(AddLikeErrorBuilder) updates]) =>
      (new AddLikeErrorBuilder()..update(updates)).build();

  _$AddLikeError._({this.error, this.movieId}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('AddLikeError', 'error');
    }
    if (movieId == null) {
      throw new BuiltValueNullFieldError('AddLikeError', 'movieId');
    }
  }

  @override
  AddLikeError rebuild(void Function(AddLikeErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddLikeErrorBuilder toBuilder() => new AddLikeErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddLikeError &&
        error == other.error &&
        movieId == other.movieId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, error.hashCode), movieId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddLikeError')
          ..add('error', error)
          ..add('movieId', movieId))
        .toString();
  }
}

class AddLikeErrorBuilder
    implements Builder<AddLikeError, AddLikeErrorBuilder> {
  _$AddLikeError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  int _movieId;
  int get movieId => _$this._movieId;
  set movieId(int movieId) => _$this._movieId = movieId;

  AddLikeErrorBuilder();

  AddLikeErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _movieId = _$v.movieId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddLikeError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddLikeError;
  }

  @override
  void update(void Function(AddLikeErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddLikeError build() {
    final _$result =
        _$v ?? new _$AddLikeError._(error: error, movieId: movieId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
