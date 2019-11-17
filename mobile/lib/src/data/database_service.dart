// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'package:root/root.dart';
import 'package:rxdart/rxdart.dart';

class FirestoreDatabaseService implements DatabaseService {
  FirestoreDatabaseService({@required Firestore firestore})
      : assert(firestore != null),
        _firestore = firestore;

  final Firestore _firestore;

  @override
  Future<void> insert(String location, Map<String, dynamic> data) {
    print('insert called with: location:[$location], data:[$data]');
    final Map<String, dynamic> _data = data
        .map<String, dynamic>((String key, dynamic value) => MapEntry<String, dynamic>(key, _matchFieldValue(value)));
    return _firestore.document(location).setData(_data, merge: true);
  }

  @override
  Future<Map<String, dynamic>> get(String location, {DataSource source = DataSource.serverAndCache}) async {
    print('get called with: location:[$location] source:[$source]');

    try {
      final DocumentSnapshot result = await _firestore.document(location).get(source: _source(source));

      return _sanitize(result.data);
    } on PlatformException catch (e) {
      //Failed to get document from cache.
      if (e.code == 'Error 14') {
        return null;
      }

      rethrow;
    }
  }

  @override
  Observable<Map<String, dynamic>> listen(String location) {
    print('listen called with: location:[$location]');
    return Observable<DocumentSnapshot>(_firestore.document(location).snapshots())
        .map((DocumentSnapshot it) => _sanitize(it.data));
  }

  @override
  Future<List<Map<String, dynamic>>> query(
    String location, {
    List<Where> where,
    OrderBy orderBy,
    int limit,
    bool isGroup = false,
    DataSource source = DataSource.serverAndCache,
  }) async {
    print(
        'query called with: location:[$location], where:[$where], orderBy:[$orderBy], limit:[$limit], source:[$source]');
    try {
      final Query ref = _mergeQuery(location, where, orderBy, limit, isGroup);
      final QuerySnapshot snapshot = await ref.getDocuments(source: _source(source));

      final List<DocumentSnapshot> documents = snapshot?.documents ?? <DocumentSnapshot>[];

      final List<Map<String, dynamic>> result = <Map<String, dynamic>>[];
      for (int i = 0; i < documents.length; i++) {
        result.add(_sanitize(documents[i].data));
      }

      return result;
    } on PlatformException catch (e) {
      if (e.message.contains('Failed to get document from cache.')) {
        return <Map<String, dynamic>>[];
      }

      rethrow;
    }
  }

  @override
  Observable<DatabaseSnapshot> snapshots(
    String location, {
    List<Where> where,
    OrderBy orderBy,
    int limit,
    bool isGroup = false,
  }) {
    print('snapshots called with: location:[$location], where:[$where], orderBy:[$orderBy], limit:[$limit]');
    assert(location.split('/').length % 2 == 1, 'To listen for changes on a particular object use [listen].');

    final Stream<QuerySnapshot> query = _mergeQuery(location, where, orderBy, limit, false).snapshots();

    return Observable<QuerySnapshot>(query)
        .map((QuerySnapshot it) => it.documentChanges
            .map((DocumentChange it) =>
                DatabaseObject(_sanitize(it.document.data), ObjectChangeType.values[it.type.index]))
            .toList())
        .map((List<DatabaseObject> it) => DatabaseSnapshot(it));
  }

  @override
  Future<void> update(String location, Map<String, dynamic> data, {List<Where> where}) async {
    print('update called with: location:[$location], data:[$data], where:[$where]');
    assert(location.split('/').length % 2 == 0, 'Updating multiple documents is not supported yet.');

    final Map<String, dynamic> _data = data
        .map<String, dynamic>((String key, dynamic value) => MapEntry<String, dynamic>(key, _matchFieldValue(value)));
    return _firestore.document(location).updateData(_data);
  }

  @override
  Future<void> delete(String location, {List<Where> where}) async {
    print('delete called with: location:[$location], where:[$where]');
    assert(location.split('/').length % 2 == 0, 'Deleting multiple documents is not supported yet.');

    return _firestore.document(location).delete();
  }

  Query _mergeQuery(String location, List<Where> where, OrderBy orderBy, int limit, bool isGroup) {
    Query ref = isGroup ? _firestore.collectionGroup(location) : _firestore.collection(location);

    if (where != null && where.isNotEmpty) {
      ref = _matchWhere(where, ref);
    }

    if (orderBy != null) {
      ref = ref.orderBy(orderBy.key, descending: orderBy.descending);
    }

    if (limit != null) {
      ref = ref.limit(limit);
    }

    return ref;
  }

  Query _matchWhere(List<Where> where, Query ref) {
    Query _ref = ref;
    for (Where it in where) {
      switch (it.type) {
        case WhereType.isEqualTo:
          _ref = _ref.where(it.key, isEqualTo: it.value);
          break;
        case WhereType.isLessThan:
          _ref = _ref.where(it.key, isLessThan: it.value);
          break;
        case WhereType.isLessThanOrEqualTo:
          _ref = _ref.where(it.key, isLessThanOrEqualTo: it.value);
          break;
        case WhereType.isGreaterThan:
          _ref = _ref.where(it.key, isGreaterThan: it.value);
          break;
        case WhereType.isGreaterThanOrEqualTo:
          _ref = _ref.where(it.key, isGreaterThanOrEqualTo: it.value);
          break;
        case WhereType.arrayContains:
          _ref = _ref.where(it.key, arrayContains: it.value);
          break;
        case WhereType.isNull:
          _ref = _ref.where(it.key, isNull: it.value);
          break;
      }
    }

    return _ref;
  }

  dynamic _matchFieldValue(dynamic value) {
    if (value is Value) {
      switch (value.type) {
        case ValueType.arrayUnion:
          return FieldValue.arrayUnion(value.value);
        case ValueType.arrayRemove:
          return FieldValue.arrayRemove(value.value);
        case ValueType.delete:
          return FieldValue.delete();
        case ValueType.increment:
          return FieldValue.increment(value.value);
        case ValueType.blob:
          return Blob(value.value);
      }
    }

    return value;
  }

  Source _source(DataSource source) {
    switch (source) {
      case DataSource.serverAndCache:
        return Source.serverAndCache;
      case DataSource.server:
        return Source.server;
      case DataSource.cache:
        return Source.cache;
    }

    throw ArgumentError('Source not expected $source.');
  }

  Map<String, dynamic> _sanitize(Map<String, dynamic> data) {
    if (data == null) {
      return null;
    }

    final Map<String, dynamic> result = <String, dynamic>{};
    for (String key in data.keys) {
      final dynamic value = data[key];
      if (value is Timestamp) {
        result[key] = value.toDate();
      } else if (value is GeoPoint) {
        result[key] = value;
      } else if (value is Blob) {
        result[key] = value.bytes;
      } else {
        result[key] = value;
      }
    }

    return result;
  }
}
