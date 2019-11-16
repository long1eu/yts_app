// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'dart:typed_data';

import 'package:rxdart/rxdart.dart';

abstract class DatabaseService {
  /// You can use [Value] as value of a key for special update.
  Future<void> insert(String location, Map<String, dynamic> data);

  Future<Map<String, dynamic>> get(String location, {DataSource source = DataSource.serverAndCache});

  Observable<Map<String, dynamic>> listen(String location);

  Future<List<Map<String, dynamic>>> query(
    String location, {
    List<Where> where,
    OrderBy orderBy,
    int limit,
    bool isGroup = false,
    DataSource source = DataSource.serverAndCache,
  });

  Observable<DatabaseSnapshot> snapshots(
    String location, {
    List<Where> where,
    OrderBy orderBy,
    int limit,
    bool isGroup = false,
  });

  Future<void> update(String location, Map<String, dynamic> data, {List<Where> where});

  Future<void> delete(String location, {List<Where> where});
}

class ObjectChangeType {
  const ObjectChangeType._(this.index, this.name);

  final int index;
  final String name;

  static const ObjectChangeType added = ObjectChangeType._(0, 'added');
  static const ObjectChangeType modified = ObjectChangeType._(1, 'modified');
  static const ObjectChangeType removed = ObjectChangeType._(2, 'removed');

  static const List<ObjectChangeType> values = <ObjectChangeType>[
    added,
    modified,
    removed,
  ];

  static ObjectChangeType forName(String name) {
    return values.firstWhere((ObjectChangeType it) => it.name == name);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is ObjectChangeType && runtimeType == other.runtimeType && index == other.index;

  @override
  int get hashCode => index.hashCode;

  @override
  String toString() => 'ObjectChangeType.$name';
}

class DatabaseSnapshot {
  const DatabaseSnapshot(this.objects);

  final List<DatabaseObject> objects;
}

class DatabaseObject {
  DatabaseObject(this.data, this.type);

  final Map<String, dynamic> data;
  final ObjectChangeType type;

  dynamic operator [](String key) => data[key];
}

enum WhereType {
  isEqualTo,
  isLessThan,
  isLessThanOrEqualTo,
  isGreaterThan,
  isGreaterThanOrEqualTo,
  arrayContains,
  isNull,
}

class Where {
  const Where._(this.key, this.type, this.value);

  factory Where.isEqualTo(String key, dynamic value) {
    return Where._(key, WhereType.isEqualTo, value);
  }

  factory Where.isLessThan(String key, dynamic value) {
    return Where._(key, WhereType.isLessThan, value);
  }

  factory Where.isLessThanOrEqualTo(String key, dynamic value) {
    return Where._(key, WhereType.isLessThanOrEqualTo, value);
  }

  factory Where.isGreaterThan(String key, dynamic value) {
    return Where._(key, WhereType.isGreaterThan, value);
  }

  factory Where.isGreaterThanOrEqualTo(String key, dynamic value) {
    return Where._(key, WhereType.isGreaterThanOrEqualTo, value);
  }

  factory Where.arrayContains(String key, dynamic value) {
    return Where._(key, WhereType.arrayContains, value);
  }

  // ignore: avoid_positional_boolean_parameters
  factory Where.isNull(String key, bool value) {
    return Where._(key, WhereType.isNull, value);
  }

  final String key;
  final dynamic value;
  final WhereType type;

  @override
  String toString() => 'Where($key $type $value)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Where &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          value == other.value &&
          type == other.type;

  @override
  int get hashCode => key.hashCode ^ value.hashCode ^ type.hashCode;
}

class OrderBy {
  const OrderBy(this.key, {this.descending = false})
      // ignore: prefer_is_empty
      : assert(key != null && key.length != 0),
        assert(descending != null);

  final String key;
  final bool descending;

  @override
  String toString() => 'OrderBy($key ${descending ? 'DESC' : 'ASC'})';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderBy && runtimeType == other.runtimeType && key == other.key && descending == other.descending;

  @override
  int get hashCode => key.hashCode ^ descending.hashCode;
}

class DataSource {
  const DataSource._(this._i);

  final int _i;

  static const DataSource serverAndCache = DataSource._(0);
  static const DataSource server = DataSource._(1);
  static const DataSource cache = DataSource._(2);

  static DataSource valueOf(String name) {
    final int i = _names.indexOf(name);
    if (i == -1) {
      return null;
    }
    return values[i];
  }

  static const List<DataSource> values = <DataSource>[
    serverAndCache,
    server,
    cache,
  ];

  static const List<String> _names = <String>[
    'serverAndCache',
    'server',
    'cache',
  ];

  @override
  String toString() => 'DataSource.${_names[_i]}';
}

class ValueType {
  const ValueType._(this.name);

  final String name;

  static const ValueType arrayUnion = ValueType._('arrayUnion');
  static const ValueType arrayRemove = ValueType._('arrayRemove');
  static const ValueType delete = ValueType._('delete');
  static const ValueType increment = ValueType._('increment');
  static const ValueType blob = ValueType._('blob');

  @override
  String toString() => 'ValueType.$name';
}

class Value {
  Value._(this.type, this.value);

  factory Value.arrayUnion(List<dynamic> elements) => Value._(ValueType.arrayUnion, elements);

  factory Value.arrayRemove(List<dynamic> elements) => Value._(ValueType.arrayRemove, elements);

  factory Value.delete() => Value._(ValueType.delete, null);

  factory Value.increment(num value) => Value._(ValueType.increment, value);

  factory Value.blob(Uint8List bytes) => Value._(ValueType.blob, bytes);

  final ValueType type;

  final dynamic value;

  @override
  String toString() => 'Value.${type.name}($value)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Value && runtimeType == other.runtimeType && type == other.type && value == other.value;

  @override
  int get hashCode => type.hashCode ^ value.hashCode;
}
