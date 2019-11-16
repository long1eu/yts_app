// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library update_request;

import 'package:built_value/built_value.dart';
import 'package:root/movies.dart';

part 'update_request.g.dart';

abstract class UpdateRequest implements Built<UpdateRequest, UpdateRequestBuilder> {
  factory UpdateRequest(RequestState request) {
    assert(request != null);
    return _$UpdateRequest((UpdateRequestBuilder b) {
      b.request = request.toBuilder();
    });
  }

  UpdateRequest._();

  RequestState get request;
}
