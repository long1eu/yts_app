// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:root/src/actions/index.dart';

export 'listen_for_comments.dart';
export 'send_comment.dart';

abstract class PlatformAction implements AppAction {
  const PlatformAction();
}
