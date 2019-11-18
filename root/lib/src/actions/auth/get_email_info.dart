// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

library get_email_info;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import '../index.dart';

part 'get_email_info.g.dart';

abstract class GetEmailInfo //
    implements
        Built<GetEmailInfo, GetEmailInfoBuilder>,
        AuthAction //
{
  factory GetEmailInfo(String email, ActionResponse response) {
    return _$GetEmailInfo((GetEmailInfoBuilder b) {
      b
        ..email = email
        ..response = response;
    });
  }

  GetEmailInfo._();

  String get email;

  @BuiltValueField(compare: false)
  ActionResponse get response;
}

abstract class GetEmailInfoSuccessful //
    implements
        Built<GetEmailInfoSuccessful, GetEmailInfoSuccessfulBuilder>,
        AuthAction //
{
  factory GetEmailInfoSuccessful(List<String> providers, String email) {
    return _$GetEmailInfoSuccessful((GetEmailInfoSuccessfulBuilder b) {
      b
        ..providers = ListBuilder<String>(providers)
        ..email = email;
    });
  }

  GetEmailInfoSuccessful._();

  BuiltList<String> get providers;

  String get email;
}

abstract class GetEmailInfoError //
    implements
        Built<GetEmailInfoError, GetEmailInfoErrorBuilder>,
        AuthAction,
        ErrorAction //
{
  factory GetEmailInfoError(Object error) {
    return _$GetEmailInfoError((GetEmailInfoErrorBuilder b) => b.error = error);
  }

  GetEmailInfoError._();

  @override
  Object get error;
}
