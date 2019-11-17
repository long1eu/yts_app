// GENERATED CODE - DO NOT MODIFY BY HAND

part of set_image_grid;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetImageGrid extends SetImageGrid {
  @override
  final ImageGrid image;

  factory _$SetImageGrid([void Function(SetImageGridBuilder) updates]) =>
      (new SetImageGridBuilder()..update(updates)).build();

  _$SetImageGrid._({this.image}) : super._() {
    if (image == null) {
      throw new BuiltValueNullFieldError('SetImageGrid', 'image');
    }
  }

  @override
  SetImageGrid rebuild(void Function(SetImageGridBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetImageGridBuilder toBuilder() => new SetImageGridBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetImageGrid && image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(0, image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetImageGrid')..add('image', image))
        .toString();
  }
}

class SetImageGridBuilder
    implements Builder<SetImageGrid, SetImageGridBuilder> {
  _$SetImageGrid _$v;

  ImageGridBuilder _image;
  ImageGridBuilder get image => _$this._image ??= new ImageGridBuilder();
  set image(ImageGridBuilder image) => _$this._image = image;

  SetImageGridBuilder();

  SetImageGridBuilder get _$this {
    if (_$v != null) {
      _image = _$v.image?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetImageGrid other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SetImageGrid;
  }

  @override
  void update(void Function(SetImageGridBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetImageGrid build() {
    _$SetImageGrid _$result;
    try {
      _$result = _$v ?? new _$SetImageGrid._(image: image.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'image';
        image.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SetImageGrid', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
