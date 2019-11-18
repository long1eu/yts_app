// File created by
// Lung Razvan <long1eu>
// on 18/11/2019

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile/src/container/movie_container.dart';
import 'package:root/movies.dart';

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
              Container(
                height: MediaQuery.of(context).size.height * .7,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(movie.background),
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
              ),
              ListView(
                padding: const EdgeInsets.all(16.0),
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
                              margin: const EdgeInsetsDirectional.only(start: 32.0),
                              height: height,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsetsDirectional.only(top: 16.0, bottom: 8.0),
                                    child: Text(
                                      movie.genres.join('/'),
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
                                      movie.year.toString(),
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
                                          movie.rating.toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  ),
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
