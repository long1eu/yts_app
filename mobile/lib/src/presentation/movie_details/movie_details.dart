// File created by
// Lung Razvan <long1eu>
// on 18/11/2019

import 'package:flutter/material.dart';
import 'package:mobile/src/container/movie_container.dart';
import 'package:root/movies.dart';

import 'favorite_button.dart';
import 'movie_background.dart';
import 'movie_information.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MoviesContainer(
      builder: (BuildContext context, Movie movie) {
        return Scaffold(
          appBar: AppBar(
            title: Text(movie.title),
          ),
          body: Stack(
            children: <Widget>[
              MovieBackground(image: movie.background),
              ListView(
                padding: const EdgeInsetsDirectional.only(
                  top: 16.0,
                  start: 16.0,
                  bottom: 16.0,
                ),
                children: <Widget>[
                  Builder(
                    builder: (BuildContext context) {
                      final double width = MediaQuery.of(context).size.shortestSide * .4;
                      final double height = width * 1.5;

                      return Row(
                        children: <Widget>[
                          Container(
                            width: width,
                            height: height,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            padding: const EdgeInsets.all(4.0),
                            child: Hero(
                              tag: movie.smallImage,
                              child: Image.network(
                                movie.smallImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              margin: const EdgeInsetsDirectional.only(start: 8.0),
                              height: height,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  MovieInformation(
                                    genres: movie.genres,
                                    rating: movie.rating,
                                    year: movie.year,
                                  ),
                                  Flexible(child: FavoriteButton(movieId: movie.id)),
                                ],
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(end: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsetsDirectional.only(top: 24.0, bottom: 16.0),
                          child: const Text(
                            'Synopsis',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            movie.summary,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
