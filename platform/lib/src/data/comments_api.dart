// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:meta/meta.dart';
import 'package:root/root.dart';
import 'package:rxdart/rxdart.dart';

class CommentsApi {
  const CommentsApi({@required DatabaseService databaseService})
      : assert(databaseService != null),
        _databaseService = databaseService;

  final DatabaseService _databaseService;

  Observable<List<Comment>> listenForComments(int movieId) {
    return _databaseService
        .snapshots('movies/$movieId/comments', limit: 100) //
        .map((DatabaseSnapshot snapshot) =>
            snapshot.objects.map((DatabaseObject object) => Comment.fromJson(object.data, object.type)).toList()
              ..sort());
  }

  Future<Comment> createComment(Comment comment) async {
    await _databaseService.insert('movies/${comment.movieId}/comments/${comment.id}', comment.json);
    return comment.rebuild((CommentBuilder b) => b.status = SendingStatus.server);
  }
}
