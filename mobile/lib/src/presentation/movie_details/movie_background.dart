// File created by
// Lung Razvan <long1eu>
// on 18/11/2019

// File created by
// Lung Razvan <long1eu>
// on 18/11/2019

import 'package:flutter/material.dart';

class MovieBackground extends StatelessWidget {
  const MovieBackground({Key key, @required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .7,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.topCenter,
          end: AlignmentDirectional.bottomCenter,
          stops: const <double>[0.0, 0.3, 1.0],
          colors: <Color>[
            Theme.of(context).primaryColor,
            Theme.of(context).primaryColor.withOpacity(.5),
            Theme.of(context).scaffoldBackgroundColor,
          ],
        ),
      ),
    );
  }
}
