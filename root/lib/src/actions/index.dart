import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:root/src/data/index.dart';

export 'auth/index.dart';
export 'movies/index.dart';

abstract class AppAction {
  const AppAction();
}

abstract class ErrorAction implements AppAction {
  const ErrorAction();

  Object get error;
}

typedef ActionResponse = void Function(dynamic action);

abstract class ListenEventItem {
  String get id;

  ObjectChangeType get changeType;
}

mixin ListenEvent<T extends ListenEventItem> {
  BuiltList<T> get data;

  @memoized
  Map<ObjectChangeType, List<T>> get typedData {
    return data.fold(
      <ObjectChangeType, List<T>>{},
      (Map<ObjectChangeType, List<T>> map, T element) {
        map[element.changeType] = (map[element.changeType] ?? <T>[])..add(element);

        return map;
      },
    );
  }
}
