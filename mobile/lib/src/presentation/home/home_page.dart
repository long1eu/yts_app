// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile/src/container/image_grid_container.dart';
import 'package:mobile/src/container/movie_is_loading_container.dart';
import 'package:mobile/src/container/movies_container.dart';
import 'package:mobile/src/models/app_state.dart';
import 'package:mobile/src/presentation/home/movie_item.dart';
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
  Widget build(BuildContext context) {
    return ImageGridContainer(
      builder: (BuildContext context, ImageGrid image) {
        return Scaffold(
          appBar: AppBar(
            title: SvgPicture.asset('res/yts.svg'),
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

                      return MovieItem(movie: movie);
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
