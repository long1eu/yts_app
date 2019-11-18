// GENERATED CODE - DO NOT MODIFY BY HAND

part of image_grid;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImageGrid> _$imageGridSerializer = new _$ImageGridSerializer();

class _$ImageGridSerializer implements StructuredSerializer<ImageGrid> {
  @override
  final Iterable<Type> types = const [ImageGrid, _$ImageGrid];
  @override
  final String wireName = 'ImageGrid';

  @override
  Iterable<Object> serialize(Serializers serializers, ImageGrid object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'width',
      serializers.serialize(object.width,
          specifiedType: const FullType(double)),
      'height',
      serializers.serialize(object.height,
          specifiedType: const FullType(double)),
      'seedW',
      serializers.serialize(object.seedW,
          specifiedType: const FullType(double)),
      'seedH',
      serializers.serialize(object.seedH,
          specifiedType: const FullType(double)),
      'grid',
      serializers.serialize(object.grid,
          specifiedType: const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(int)])
          ])),
      'color',
      serializers.serialize(object.color, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  ImageGrid deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageGridBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'seedW':
          result.seedW = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'seedH':
          result.seedH = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'grid':
          result.grid.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltList, const [const FullType(int)])
              ])) as BuiltList<dynamic>);
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageGrid extends ImageGrid {
  @override
  final double width;
  @override
  final double height;
  @override
  final double seedW;
  @override
  final double seedH;
  @override
  final BuiltList<BuiltList<int>> grid;
  @override
  final int color;
  String __encode;

  factory _$ImageGrid([void Function(ImageGridBuilder) updates]) =>
      (new ImageGridBuilder()..update(updates)).build();

  _$ImageGrid._(
      {this.width, this.height, this.seedW, this.seedH, this.grid, this.color})
      : super._() {
    if (width == null) {
      throw new BuiltValueNullFieldError('ImageGrid', 'width');
    }
    if (height == null) {
      throw new BuiltValueNullFieldError('ImageGrid', 'height');
    }
    if (seedW == null) {
      throw new BuiltValueNullFieldError('ImageGrid', 'seedW');
    }
    if (seedH == null) {
      throw new BuiltValueNullFieldError('ImageGrid', 'seedH');
    }
    if (grid == null) {
      throw new BuiltValueNullFieldError('ImageGrid', 'grid');
    }
    if (color == null) {
      throw new BuiltValueNullFieldError('ImageGrid', 'color');
    }
  }

  @override
  String get encode => __encode ??= super.encode;

  @override
  ImageGrid rebuild(void Function(ImageGridBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageGridBuilder toBuilder() => new ImageGridBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageGrid &&
        width == other.width &&
        height == other.height &&
        seedW == other.seedW &&
        seedH == other.seedH &&
        grid == other.grid &&
        color == other.color;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, width.hashCode), height.hashCode),
                    seedW.hashCode),
                seedH.hashCode),
            grid.hashCode),
        color.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImageGrid')
          ..add('width', width)
          ..add('height', height)
          ..add('seedW', seedW)
          ..add('seedH', seedH)
          ..add('grid', grid)
          ..add('color', color))
        .toString();
  }
}

class ImageGridBuilder implements Builder<ImageGrid, ImageGridBuilder> {
  _$ImageGrid _$v;

  double _width;
  double get width => _$this._width;
  set width(double width) => _$this._width = width;

  double _height;
  double get height => _$this._height;
  set height(double height) => _$this._height = height;

  double _seedW;
  double get seedW => _$this._seedW;
  set seedW(double seedW) => _$this._seedW = seedW;

  double _seedH;
  double get seedH => _$this._seedH;
  set seedH(double seedH) => _$this._seedH = seedH;

  ListBuilder<BuiltList<int>> _grid;
  ListBuilder<BuiltList<int>> get grid =>
      _$this._grid ??= new ListBuilder<BuiltList<int>>();
  set grid(ListBuilder<BuiltList<int>> grid) => _$this._grid = grid;

  int _color;
  int get color => _$this._color;
  set color(int color) => _$this._color = color;

  ImageGridBuilder();

  ImageGridBuilder get _$this {
    if (_$v != null) {
      _width = _$v.width;
      _height = _$v.height;
      _seedW = _$v.seedW;
      _seedH = _$v.seedH;
      _grid = _$v.grid?.toBuilder();
      _color = _$v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageGrid other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ImageGrid;
  }

  @override
  void update(void Function(ImageGridBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ImageGrid build() {
    _$ImageGrid _$result;
    try {
      _$result = _$v ??
          new _$ImageGrid._(
              width: width,
              height: height,
              seedW: seedW,
              seedH: seedH,
              grid: grid.build(),
              color: color);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'grid';
        grid.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ImageGrid', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
