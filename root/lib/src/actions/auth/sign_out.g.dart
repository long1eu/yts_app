// GENERATED CODE - DO NOT MODIFY BY HAND

part of sign_out;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignOut extends SignOut {
  factory _$SignOut([void Function(SignOutBuilder) updates]) =>
      (new SignOutBuilder()..update(updates)).build();

  _$SignOut._() : super._();

  @override
  SignOut rebuild(void Function(SignOutBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignOutBuilder toBuilder() => new SignOutBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignOut;
  }

  @override
  int get hashCode {
    return 957153408;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SignOut').toString();
  }
}

class SignOutBuilder implements Builder<SignOut, SignOutBuilder> {
  _$SignOut _$v;

  SignOutBuilder();

  @override
  void replace(SignOut other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SignOut;
  }

  @override
  void update(void Function(SignOutBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignOut build() {
    final _$result = _$v ?? new _$SignOut._();
    replace(_$result);
    return _$result;
  }
}

class _$SignOutSuccessful extends SignOutSuccessful {
  factory _$SignOutSuccessful(
          [void Function(SignOutSuccessfulBuilder) updates]) =>
      (new SignOutSuccessfulBuilder()..update(updates)).build();

  _$SignOutSuccessful._() : super._();

  @override
  SignOutSuccessful rebuild(void Function(SignOutSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignOutSuccessfulBuilder toBuilder() =>
      new SignOutSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignOutSuccessful;
  }

  @override
  int get hashCode {
    return 132189442;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SignOutSuccessful').toString();
  }
}

class SignOutSuccessfulBuilder
    implements Builder<SignOutSuccessful, SignOutSuccessfulBuilder> {
  _$SignOutSuccessful _$v;

  SignOutSuccessfulBuilder();

  @override
  void replace(SignOutSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SignOutSuccessful;
  }

  @override
  void update(void Function(SignOutSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignOutSuccessful build() {
    final _$result = _$v ?? new _$SignOutSuccessful._();
    replace(_$result);
    return _$result;
  }
}

class _$SignOutError extends SignOutError {
  @override
  final Object error;

  factory _$SignOutError([void Function(SignOutErrorBuilder) updates]) =>
      (new SignOutErrorBuilder()..update(updates)).build();

  _$SignOutError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('SignOutError', 'error');
    }
  }

  @override
  SignOutError rebuild(void Function(SignOutErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignOutErrorBuilder toBuilder() => new SignOutErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignOutError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignOutError')..add('error', error))
        .toString();
  }
}

class SignOutErrorBuilder
    implements Builder<SignOutError, SignOutErrorBuilder> {
  _$SignOutError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  SignOutErrorBuilder();

  SignOutErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignOutError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SignOutError;
  }

  @override
  void update(void Function(SignOutErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignOutError build() {
    final _$result = _$v ?? new _$SignOutError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
