// GENERATED CODE - DO NOT MODIFY BY HAND

part of set_selected_movie;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetSelectedMovieId extends SetSelectedMovieId {
  @override
  final int movieId;

  factory _$SetSelectedMovieId(
          [void Function(SetSelectedMovieIdBuilder) updates]) =>
      (new SetSelectedMovieIdBuilder()..update(updates)).build();

  _$SetSelectedMovieId._({this.movieId}) : super._() {
    if (movieId == null) {
      throw new BuiltValueNullFieldError('SetSelectedMovieId', 'movieId');
    }
  }

  @override
  SetSelectedMovieId rebuild(
          void Function(SetSelectedMovieIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetSelectedMovieIdBuilder toBuilder() =>
      new SetSelectedMovieIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetSelectedMovieId && movieId == other.movieId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, movieId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetSelectedMovieId')
          ..add('movieId', movieId))
        .toString();
  }
}

class SetSelectedMovieIdBuilder
    implements Builder<SetSelectedMovieId, SetSelectedMovieIdBuilder> {
  _$SetSelectedMovieId _$v;

  int _movieId;
  int get movieId => _$this._movieId;
  set movieId(int movieId) => _$this._movieId = movieId;

  SetSelectedMovieIdBuilder();

  SetSelectedMovieIdBuilder get _$this {
    if (_$v != null) {
      _movieId = _$v.movieId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetSelectedMovieId other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SetSelectedMovieId;
  }

  @override
  void update(void Function(SetSelectedMovieIdBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetSelectedMovieId build() {
    final _$result = _$v ?? new _$SetSelectedMovieId._(movieId: movieId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
