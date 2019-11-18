// File created by
// Lung Razvan <long1eu>
// on 18/11/2019

import 'package:meta/meta.dart';
import 'package:root/root.dart';

class UserApi {
  UserApi({
    @required DatabaseService databaseService,
  })  : assert(databaseService != null),
        _databaseService = databaseService;

  final DatabaseService _databaseService;

  Future<void> addLike(String uid, int movieId) async {
    return _databaseService.update(
      'users/$uid',
      <String, dynamic>{
        'likes': Value.arrayUnion(<int>[movieId])
      },
    );
  }
}
