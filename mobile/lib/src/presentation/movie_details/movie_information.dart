// File created by
// Lung Razvan <long1eu>
// on 18/11/2019

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MovieInformation extends StatelessWidget {
  const MovieInformation({Key key, @required this.genres, @required this.year, @required this.rating})
      : super(key: key);

  final BuiltList<String> genres;
  final int year;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(start: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsetsDirectional.only(top: 16.0, bottom: 8.0),
            child: Text(
              genres.join('/'),
              softWrap: true,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.only(bottom: 16.0),
            child: Text(
              year.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              SvgPicture.asset('res/imdb.svg'),
              Container(
                margin: const EdgeInsetsDirectional.only(start: 8.0),
                child: Text(
                  rating.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
