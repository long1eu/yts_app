// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:auth/src/data/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:root/auth.dart';
import 'package:root/root.dart';
import 'package:rxdart/rxdart.dart';

class UserEpic {
  const UserEpic({@required UserApi userApi})
      : assert(userApi != null, 'AuthApi should not be null.'),
        _userApi = userApi;

  final UserApi _userApi;

  Epic<AuthState> get epic {
    return combineEpics<AuthState>(<Epic<AuthState>>[
      TypedEpic<AuthState, AddLike>(_addLike),
    ]);
  }

  Stream<AuthAction> _addLike(Stream<AddLike> actions, EpicStore<AuthState> store) {
    return Observable<AddLike>(actions) //
        .flatMap((AddLike action) => Observable<void>.fromFuture(_userApi.addLike(store.state.user.uid, action.movieId))
            .mapTo<AuthAction>(AddLikeSuccessful())
            .onErrorReturnWith((dynamic error) => AddLikeError(error)));
  }
}
