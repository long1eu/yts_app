// GENERATED CODE - DO NOT MODIFY BY HAND

part of update_register_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateRegisterData extends UpdateRegisterData {
  @override
  final String password;
  @override
  final String photo;
  @override
  final String displayName;

  factory _$UpdateRegisterData(
          [void Function(UpdateRegisterDataBuilder) updates]) =>
      (new UpdateRegisterDataBuilder()..update(updates)).build();

  _$UpdateRegisterData._({this.password, this.photo, this.displayName})
      : super._();

  @override
  UpdateRegisterData rebuild(
          void Function(UpdateRegisterDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateRegisterDataBuilder toBuilder() =>
      new UpdateRegisterDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateRegisterData &&
        password == other.password &&
        photo == other.photo &&
        displayName == other.displayName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, password.hashCode), photo.hashCode), displayName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateRegisterData')
          ..add('password', password)
          ..add('photo', photo)
          ..add('displayName', displayName))
        .toString();
  }
}

class UpdateRegisterDataBuilder
    implements Builder<UpdateRegisterData, UpdateRegisterDataBuilder> {
  _$UpdateRegisterData _$v;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _photo;
  String get photo => _$this._photo;
  set photo(String photo) => _$this._photo = photo;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  UpdateRegisterDataBuilder();

  UpdateRegisterDataBuilder get _$this {
    if (_$v != null) {
      _password = _$v.password;
      _photo = _$v.photo;
      _displayName = _$v.displayName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateRegisterData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdateRegisterData;
  }

  @override
  void update(void Function(UpdateRegisterDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateRegisterData build() {
    final _$result = _$v ??
        new _$UpdateRegisterData._(
            password: password, photo: photo, displayName: displayName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
