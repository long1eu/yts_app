// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

library image_grid;

import 'dart:convert';
import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

import 'serializers.dart';

part 'image_grid.g.dart';

const int kPartitions = 6;
const int _kLessSeed = 10;
const int _kBaseSeed = 6;
const String _kMatrixPattern = 'matrix:<:>:';

abstract class ImageGrid implements Built<ImageGrid, ImageGridBuilder> {
  factory ImageGrid({double width = 120, double height = 120, @required int color}) {
    return _$ImageGrid((ImageGridBuilder b) {
      b
        ..width = width
        ..height = height ?? width
        ..seedW = width / _kBaseSeed
        ..seedH = (height ?? width) / _kBaseSeed
        ..grid = _generatedGrid().toBuilder()
        ..color = color;
    });
  }

  factory ImageGrid.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  factory ImageGrid.fromEncoded(String encoded) {
    final Map<dynamic, dynamic> json = jsonDecode(utf8.decode(base64Decode(encoded)).split(_kMatrixPattern)[1]);
    return ImageGrid.fromJson(json);
  }

  ImageGrid._();

  double get width;

  double get height;

  double get seedW;

  double get seedH;

  BuiltList<BuiltList<int>> get grid;

  int get color;

  @memoized
  String get encode => base64Encode(utf8.encode('$_kMatrixPattern${jsonEncode(json)}'));

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<ImageGrid> get serializer => _$imageGridSerializer;

  ImageGrid copyWith({double size}) {
    return ImageGrid(color: color, width: size, height: size);
  }
}

BuiltList<BuiltList<int>> _generatedGrid() {
  final Random random = Random();
  final ListBuilder<BuiltList<int>> grid = ListBuilder<BuiltList<int>>();

  for (int y = 0; y < kPartitions; y++) {
    final ListBuilder<int> yList = ListBuilder<int>();
    for (int x = 0; x < _kBaseSeed; x++) {
      yList.add((random.nextDouble() * 2).floor());
    }
    grid.add(yList.build());
  }

  final BuiltList<int> first = grid[kPartitions - 1];
  final int length = first.length;
  final ListBuilder<int> values = ListBuilder<int>();
  for (int i = 0; i < length; i++) {
    final int c = first[i];

    if (grid[kPartitions - 2][c] == i) {
      values.insert(i, -1);
    } else {
      values.insert(i, (random.nextDouble() * 2).floor());
    }
  }
  grid[kPartitions - 1] = values.build();

  final BuiltList<BuiltList<int>> result = grid.build();
  if (_getDots(result) < _kLessSeed || !_getIsFilledTop(result) || !_getIsFilledBottom(result)) {
    return _generatedGrid();
  }

  return result;
}

int _getDots(BuiltList<BuiltList<int>> grid) {
  return grid
      .map((BuiltList<int> i) => i.reduce((int previous, int current) => current == -1 ? previous : previous + current))
      .reduce((int p, int c) => c + p);
}

bool _getIsFilledTop(BuiltList<BuiltList<int>> grid) {
  return grid.map((BuiltList<int> i) => i[0]).every((int it) => it != -1);
}

bool _getIsFilledBottom(BuiltList<BuiltList<int>> grid) {
  return grid.map((BuiltList<int> i) => i.last).every((int it) => it != -1);
}
