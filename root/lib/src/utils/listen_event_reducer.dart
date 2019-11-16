// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:built_collection/built_collection.dart';
import 'package:root/src/actions/index.dart';
import 'package:root/src/data/index.dart';

BuiltMap<String, T> listenEventReducer<T extends ListenEventItem>(BuiltMap<String, T> state, ListenEvent<T> action) {
  return state.rebuild((MapBuilder<String, T> b) {
    for (ObjectChangeType type in ObjectChangeType.values) {
      final List<T> data = action.typedData[type];
      if (data == null || data.isEmpty) {
        continue;
      }

      if (type == ObjectChangeType.added) {
        b.addIterable<T>(
          data,
          key: (T it) => it.id,
          value: (T it) => it,
        );
      } else if (type == ObjectChangeType.modified) {
        for (T item in data) {
          b[item.id] = item;
        }
      } else if (type == ObjectChangeType.removed) {
        final List<String> ids = data.map((T it) => it.id).toList();
        b.removeWhere((String id, _) => ids.contains(id));
      }
    }
  });
}
