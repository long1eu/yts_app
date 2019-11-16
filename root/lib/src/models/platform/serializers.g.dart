// GENERATED CODE - DO NOT MODIFY BY HAND

part of platform_serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Comment.serializer)
      ..add(MovieData.serializer)
      ..add(PlatformState.serializer)
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Comment)]),
          () => new MapBuilder<String, Comment>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(int), const FullType(MovieData)]),
          () => new MapBuilder<int, MovieData>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// **************************************************************************
// TypeAdaptersGenerator
// **************************************************************************

void _$registerHiveTypes() {
  Hive.registerAdapter(MovieData.typeAdapter, MovieData.typeAdapter.typeId);
  Hive.registerAdapter(Comment.typeAdapter, Comment.typeAdapter.typeId);
}
