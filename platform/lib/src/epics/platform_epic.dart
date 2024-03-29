// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:meta/meta.dart';
import 'package:app_platform/src/data/comments_api.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:root/platform.dart';
import 'package:rxdart/rxdart.dart';

class PlatformEpic {
  const PlatformEpic({@required CommentsApi commentsApi})
      : assert(commentsApi != null, 'CommentsApi should not be null.'),
        _commentsApi = commentsApi;

  final CommentsApi _commentsApi;

  Epic<PlatformState> get epic {
    return combineEpics<PlatformState>(<Epic<PlatformState>>[
      _listenForComments,
      TypedEpic<PlatformState, SendComment>(_sendComment),
    ]);
  }

  Stream<PlatformAction> _listenForComments(Stream<dynamic> actions, EpicStore<PlatformState> store) {
    return Observable<dynamic>(actions) //
        .whereType<ListenForComments>()
        .doOnData((ListenForComments action) => print('▶️ listening for comments'))
        .flatMap((ListenForComments action) => _commentsApi
            .listenForComments(store.state.selectedMovieId)
            .map<PlatformAction>((List<Comment> comments) => OnCommentsEvent(comments))
            .takeUntil(Observable<dynamic>(actions).whereType<StopListeningForComments>())
            .doOnDone(() => print('⏹ listening for comments')))
        .onErrorReturnWith((dynamic error) => ListenForCommentsError(error));
  }

  Stream<PlatformAction> _sendComment(Stream<SendComment> actions, EpicStore<PlatformState> store) {
    return Observable<SendComment>(actions) //
        .flatMap<PlatformAction>((SendComment action) => _commentsApi
            .sendComment(action.comment)
            .map<PlatformAction>((Comment comment) =>
                SendCommentSuccessful(comment.rebuild((CommentBuilder b) => b.status = SendingStatus.server)))
            .timeout(const Duration(seconds: 30))
            .onErrorReturnWith((dynamic error) =>
                SendCommentError(error, action.comment.rebuild((CommentBuilder b) => b.status = SendingStatus.error))));
  }
}
