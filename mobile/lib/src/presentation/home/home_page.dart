// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobile/src/container/image_grid_container.dart';
import 'package:mobile/src/container/movie_is_loading_container.dart';
import 'package:mobile/src/container/movies_container.dart';
import 'package:mobile/src/models/app_state.dart';
import 'package:mobile/src/presentation/widgets/random_avatar.dart';
import 'package:mobile/src/presentation/widgets/store_mixin.dart';
import 'package:root/auth.dart';
import 'package:root/flutter.dart';
import 'package:root/movies.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with StoreMixin<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    dispatch(GetMovies());
  }

  @override
  Widget build(BuildContext context) {
    return ImageGridContainer(
      builder: (BuildContext context, ImageGrid image) {
        return Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              if (image != null)
                IconButton(
                  icon: RandomAvatar(image: image.copyWith(size: 32.0)),
                  onPressed: () {
                    StoreProvider.of<AppState>(context).dispatch(SignOut());
                  },
                ),
            ],
          ),
          body: MovieIsLoadingContainer(
            builder: (BuildContext context, bool isLoading) {
              if (isLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              return MoviesContainer(
                builder: (BuildContext context, List<Movie> movies) {
                  return GridView.builder(
                    padding: const EdgeInsets.all(16.0),
                    itemCount: movies.length,
                    itemBuilder: (BuildContext context, int i) {
                      final Movie movie = movies[i];

                      return Material(
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(8.0),
                        child: Column(
                          children: <Widget>[
                            Flexible(
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
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 16.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadiusDirectional.vertical(
                                  bottom: Radius.circular(8.0),
                                ),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 54.0,
                                    alignment: AlignmentDirectional.center,
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
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .5,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
