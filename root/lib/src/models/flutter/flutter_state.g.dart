// GENERATED CODE - DO NOT MODIFY BY HAND

part of flutter_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FlutterState> _$flutterStateSerializer =
    new _$FlutterStateSerializer();

class _$FlutterStateSerializer implements StructuredSerializer<FlutterState> {
  @override
  final Iterable<Type> types = const [FlutterState, _$FlutterState];
  @override
  final String wireName = 'FlutterState';

  @override
  Iterable<Object> serialize(Serializers serializers, FlutterState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(ImageGrid)));
    }
    return result;
  }

  @override
  FlutterState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FlutterStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'image':
          result.image.replace(serializers.deserialize(value,
              specifiedType: const FullType(ImageGrid)) as ImageGrid);
          break;
      }
    }

    return result.build();
  }
}

class _$FlutterState extends FlutterState {
  @override
  final ImageGrid image;

  factory _$FlutterState([void Function(FlutterStateBuilder) updates]) =>
      (new FlutterStateBuilder()..update(updates)).build();

  _$FlutterState._({this.image}) : super._();

  @override
  FlutterState rebuild(void Function(FlutterStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlutterStateBuilder toBuilder() => new FlutterStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlutterState && image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(0, image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FlutterState')..add('image', image))
        .toString();
  }
}

class FlutterStateBuilder
    implements Builder<FlutterState, FlutterStateBuilder> {
  _$FlutterState _$v;

  ImageGridBuilder _image;
  ImageGridBuilder get image => _$this._image ??= new ImageGridBuilder();
  set image(ImageGridBuilder image) => _$this._image = image;

  FlutterStateBuilder();

  FlutterStateBuilder get _$this {
    if (_$v != null) {
      _image = _$v.image?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlutterState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FlutterState;
  }

  @override
  void update(void Function(FlutterStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FlutterState build() {
    _$FlutterState _$result;
    try {
      _$result = _$v ?? new _$FlutterState._(image: _image?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FlutterState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
