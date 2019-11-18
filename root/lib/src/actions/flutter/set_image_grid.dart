// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

library set_image_grid;

import 'package:built_value/built_value.dart';
import 'package:root/src/models/flutter/index.dart';

import 'index.dart';

part 'set_image_grid.g.dart';

abstract class SetImageGrid //
    implements
        Built<SetImageGrid, SetImageGridBuilder>,
        FlutterAction //
{
  factory SetImageGrid(ImageGrid image) {
    return _$SetImageGrid((SetImageGridBuilder b) => b.image = image.toBuilder());
  }

  SetImageGrid._();

  ImageGrid get image;
}
