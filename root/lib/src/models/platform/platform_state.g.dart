// GENERATED CODE - DO NOT MODIFY BY HAND

part of platform_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlatformState> _$platformStateSerializer =
    new _$PlatformStateSerializer();

class _$PlatformStateSerializer implements StructuredSerializer<PlatformState> {
  @override
  final Iterable<Type> types = const [PlatformState, _$PlatformState];
  @override
  final String wireName = 'PlatformState';

  @override
  Iterable<Object> serialize(Serializers serializers, PlatformState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'selectedMovieId',
      serializers.serialize(object.selectedMovieId,
          specifiedType: const FullType(int)),
      'movieData',
      serializers.serialize(object.movieData,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(int), const FullType(MovieData)])),
    ];

    return result;
  }

  @override
  PlatformState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlatformStateBuilder();

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
        case 'movieData':
          result.movieData.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(int),
                const FullType(MovieData)
              ])) as BuiltMap<dynamic, dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$PlatformState extends PlatformState {
  @override
  final int selectedMovieId;
  @override
  final BuiltMap<int, MovieData> movieData;

  factory _$PlatformState([void Function(PlatformStateBuilder) updates]) =>
      (new PlatformStateBuilder()..update(updates)).build();

  _$PlatformState._({this.selectedMovieId, this.movieData}) : super._() {
    if (selectedMovieId == null) {
      throw new BuiltValueNullFieldError('PlatformState', 'selectedMovieId');
    }
    if (movieData == null) {
      throw new BuiltValueNullFieldError('PlatformState', 'movieData');
    }
  }

  @override
  PlatformState rebuild(void Function(PlatformStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlatformStateBuilder toBuilder() => new PlatformStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlatformState &&
        selectedMovieId == other.selectedMovieId &&
        movieData == other.movieData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, selectedMovieId.hashCode), movieData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PlatformState')
          ..add('selectedMovieId', selectedMovieId)
          ..add('movieData', movieData))
        .toString();
  }
}

class PlatformStateBuilder
    implements Builder<PlatformState, PlatformStateBuilder> {
  _$PlatformState _$v;

  int _selectedMovieId;
  int get selectedMovieId => _$this._selectedMovieId;
  set selectedMovieId(int selectedMovieId) =>
      _$this._selectedMovieId = selectedMovieId;

  MapBuilder<int, MovieData> _movieData;
  MapBuilder<int, MovieData> get movieData =>
      _$this._movieData ??= new MapBuilder<int, MovieData>();
  set movieData(MapBuilder<int, MovieData> movieData) =>
      _$this._movieData = movieData;

  PlatformStateBuilder();

  PlatformStateBuilder get _$this {
    if (_$v != null) {
      _selectedMovieId = _$v.selectedMovieId;
      _movieData = _$v.movieData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlatformState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PlatformState;
  }

  @override
  void update(void Function(PlatformStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PlatformState build() {
    _$PlatformState _$result;
    try {
      _$result = _$v ??
          new _$PlatformState._(
              selectedMovieId: selectedMovieId, movieData: movieData.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'movieData';
        movieData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PlatformState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
