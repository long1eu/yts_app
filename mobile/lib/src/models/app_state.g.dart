// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'authState',
      serializers.serialize(object.authState,
          specifiedType: const FullType(AuthState)),
      'moviesState',
      serializers.serialize(object.moviesState,
          specifiedType: const FullType(MoviesState)),
      'platformState',
      serializers.serialize(object.platformState,
          specifiedType: const FullType(PlatformState)),
      'flutterState',
      serializers.serialize(object.flutterState,
          specifiedType: const FullType(FlutterState)),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'authState':
          result.authState.replace(serializers.deserialize(value,
              specifiedType: const FullType(AuthState)) as AuthState);
          break;
        case 'moviesState':
          result.moviesState.replace(serializers.deserialize(value,
              specifiedType: const FullType(MoviesState)) as MoviesState);
          break;
        case 'platformState':
          result.platformState.replace(serializers.deserialize(value,
              specifiedType: const FullType(PlatformState)) as PlatformState);
          break;
        case 'flutterState':
          result.flutterState.replace(serializers.deserialize(value,
              specifiedType: const FullType(FlutterState)) as FlutterState);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final AuthState authState;
  @override
  final MoviesState moviesState;
  @override
  final PlatformState platformState;
  @override
  final FlutterState flutterState;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.authState, this.moviesState, this.platformState, this.flutterState})
      : super._() {
    if (authState == null) {
      throw new BuiltValueNullFieldError('AppState', 'authState');
    }
    if (moviesState == null) {
      throw new BuiltValueNullFieldError('AppState', 'moviesState');
    }
    if (platformState == null) {
      throw new BuiltValueNullFieldError('AppState', 'platformState');
    }
    if (flutterState == null) {
      throw new BuiltValueNullFieldError('AppState', 'flutterState');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        authState == other.authState &&
        moviesState == other.moviesState &&
        platformState == other.platformState &&
        flutterState == other.flutterState;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, authState.hashCode), moviesState.hashCode),
            platformState.hashCode),
        flutterState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('authState', authState)
          ..add('moviesState', moviesState)
          ..add('platformState', platformState)
          ..add('flutterState', flutterState))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  AuthStateBuilder _authState;
  AuthStateBuilder get authState =>
      _$this._authState ??= new AuthStateBuilder();
  set authState(AuthStateBuilder authState) => _$this._authState = authState;

  MoviesStateBuilder _moviesState;
  MoviesStateBuilder get moviesState =>
      _$this._moviesState ??= new MoviesStateBuilder();
  set moviesState(MoviesStateBuilder moviesState) =>
      _$this._moviesState = moviesState;

  PlatformStateBuilder _platformState;
  PlatformStateBuilder get platformState =>
      _$this._platformState ??= new PlatformStateBuilder();
  set platformState(PlatformStateBuilder platformState) =>
      _$this._platformState = platformState;

  FlutterStateBuilder _flutterState;
  FlutterStateBuilder get flutterState =>
      _$this._flutterState ??= new FlutterStateBuilder();
  set flutterState(FlutterStateBuilder flutterState) =>
      _$this._flutterState = flutterState;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _authState = _$v.authState?.toBuilder();
      _moviesState = _$v.moviesState?.toBuilder();
      _platformState = _$v.platformState?.toBuilder();
      _flutterState = _$v.flutterState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              authState: authState.build(),
              moviesState: moviesState.build(),
              platformState: platformState.build(),
              flutterState: flutterState.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'authState';
        authState.build();
        _$failedField = 'moviesState';
        moviesState.build();
        _$failedField = 'platformState';
        platformState.build();
        _$failedField = 'flutterState';
        flutterState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
