// File created by
// Lung Razvan <long1eu>
// on 18/11/2019

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobile/main.dart';
import 'package:mobile/src/models/app_state.dart';
import 'package:root/movies.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final int rating = movie.rating.round();
    return GestureDetector(
      onTap: () {
        StoreProvider.of<AppState>(context).dispatch(SetSelectedMovieId(movie.id));
        Navigator.pushNamed(context, AppRoutes.movieDetailsPage);
      },
      child: Material(
        elevation: 4.0,
        borderRadius: BorderRadius.circular(8.0),
        child: Column(
          children: <Widget>[
            Flexible(
              child: Hero(
                tag: movie.smallImage,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadiusDirectional.vertical(
                      top: Radius.circular(8.0),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(movie.smallImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadiusDirectional.vertical(
                  bottom: Radius.circular(8.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  RatingStarts(rating: rating),
                  Container(
                    height: 42.0,
                    margin: const EdgeInsetsDirectional.only(top: 8.0),
                    alignment: AlignmentDirectional.topCenter,
                    child: Text(
                      movie.title,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 24.0,
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          movie.year.toString(),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text.rich(
                            TextSpan(
                              text: '${movie.rating} ',
                              children: const <TextSpan>[
                                TextSpan(
                                  text: 'IMDb',
                                  style: TextStyle(
                                    fontSize: 8.0,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingStarts extends StatelessWidget {
  const RatingStarts({
    Key key,
    @required this.rating,
  }) : super(key: key);

  final int rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List<Widget>.generate(
        10,
        (int i) {
          return Icon(
            rating <= i ? Icons.star_border : Icons.star,
            size: 8.0,
            color: rating <= i ? Theme.of(context).iconTheme.color : Theme.of(context).accentColor,
          );
        },
      ),
    );
  }
}
