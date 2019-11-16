export 'auth/index.dart';
export 'movies/index.dart';
export 'platform/index.dart';

abstract class AppAction {
  const AppAction();
}

abstract class ErrorAction implements AppAction {
  const ErrorAction();
}