// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:root/root.dart';

class RandomAvatar extends StatelessWidget {
  const RandomAvatar({Key key, @required this.image}) : super(key: key);

  final ImageGrid image;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: CustomPaint(
        painter: RandomAvatarPainter(image: image),
        child: Container(
          width: image.width,
          height: image.height,
        ),
      ),
    );
  }
}

class RandomAvatarPainter extends CustomPainter {
  RandomAvatarPainter({@required this.image});

  final ImageGrid image;

  @override
  void paint(Canvas canvas, Size size) {
    final BuiltList<BuiltList<int>> grid = image.grid;

    final Path path = Path()
      ..addOval(Rect.fromCircle(
        center: size.center(Offset.zero),
        radius: size.height / 2,
      ));

    canvas
      ..clipPath(path)
      ..drawRect(Rect.fromLTWH(0, 0, size.width, size.height), Paint()..color = Colors.white);

    final Paint paint = Paint()..color = Color(image.color);
    for (int y = 0; y < grid.length; y++) {
      for (int x = 0; x < grid.length; x++) {
        if (grid[y][x] == 1) {
          canvas.drawRect(Rect.fromLTWH(image.seedW * x, image.seedH * y, image.seedW, image.seedH), paint);
        }
      }
    }
  }

  @override
  bool shouldRepaint(RandomAvatarPainter oldDelegate) {
    return image != oldDelegate.image;
  }
}
