// GENERATED CODE - DO NOT MODIFY BY HAND

part of update_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateRequest extends UpdateRequest {
  @override
  final RequestState request;

  factory _$UpdateRequest([void Function(UpdateRequestBuilder) updates]) =>
      (new UpdateRequestBuilder()..update(updates)).build();

  _$UpdateRequest._({this.request}) : super._() {
    if (request == null) {
      throw new BuiltValueNullFieldError('UpdateRequest', 'request');
    }
  }

  @override
  UpdateRequest rebuild(void Function(UpdateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateRequestBuilder toBuilder() => new UpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateRequest && request == other.request;
  }

  @override
  int get hashCode {
    return $jf($jc(0, request.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateRequest')
          ..add('request', request))
        .toString();
  }
}

class UpdateRequestBuilder
    implements Builder<UpdateRequest, UpdateRequestBuilder> {
  _$UpdateRequest _$v;

  RequestStateBuilder _request;
  RequestStateBuilder get request =>
      _$this._request ??= new RequestStateBuilder();
  set request(RequestStateBuilder request) => _$this._request = request;

  UpdateRequestBuilder();

  UpdateRequestBuilder get _$this {
    if (_$v != null) {
      _request = _$v.request?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdateRequest;
  }

  @override
  void update(void Function(UpdateRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateRequest build() {
    _$UpdateRequest _$result;
    try {
      _$result = _$v ?? new _$UpdateRequest._(request: request.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'request';
        request.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpdateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
