// GENERATED CODE - DO NOT MODIFY BY HAND

part of request_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RequestState> _$requestStateSerializer =
    new _$RequestStateSerializer();

class _$RequestStateSerializer implements StructuredSerializer<RequestState> {
  @override
  final Iterable<Type> types = const [RequestState, _$RequestState];
  @override
  final String wireName = 'RequestState';

  @override
  Iterable<Object> serialize(Serializers serializers, RequestState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'isLoading',
      serializers.serialize(object.isLoading,
          specifiedType: const FullType(bool)),
    ];
    if (object.minimumRating != null) {
      result
        ..add('minimum_rating')
        ..add(serializers.serialize(object.minimumRating,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  RequestState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RequestStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'minimum_rating':
          result.minimumRating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'isLoading':
          result.isLoading = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$RequestState extends RequestState {
  @override
  final int page;
  @override
  final int minimumRating;
  @override
  final bool isLoading;

  factory _$RequestState([void Function(RequestStateBuilder) updates]) =>
      (new RequestStateBuilder()..update(updates)).build();

  _$RequestState._({this.page, this.minimumRating, this.isLoading})
      : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('RequestState', 'page');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('RequestState', 'isLoading');
    }
  }

  @override
  RequestState rebuild(void Function(RequestStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestStateBuilder toBuilder() => new RequestStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestState &&
        page == other.page &&
        minimumRating == other.minimumRating &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, page.hashCode), minimumRating.hashCode),
        isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RequestState')
          ..add('page', page)
          ..add('minimumRating', minimumRating)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class RequestStateBuilder
    implements Builder<RequestState, RequestStateBuilder> {
  _$RequestState _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _minimumRating;
  int get minimumRating => _$this._minimumRating;
  set minimumRating(int minimumRating) => _$this._minimumRating = minimumRating;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  RequestStateBuilder();

  RequestStateBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _minimumRating = _$v.minimumRating;
      _isLoading = _$v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RequestState;
  }

  @override
  void update(void Function(RequestStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RequestState build() {
    final _$result = _$v ??
        new _$RequestState._(
            page: page, minimumRating: minimumRating, isLoading: isLoading);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

TypeAdapter<RequestState> _$requestStateTypeAdapter =
    new _$RequestStateAdapter();

class _$RequestStateAdapter extends TypeAdapter<RequestState> {
  int get typeId => 2;

  @override
  RequestState read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return (RequestStateBuilder()
          ..page = fields[0]
          ..minimumRating = fields[1])
        .build();
  }

  @override
  void write(BinaryWriter writer, RequestState obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.page)
      ..writeByte(1)
      ..write(obj.minimumRating);
  }
}
