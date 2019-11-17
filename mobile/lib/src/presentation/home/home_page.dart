// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobile/src/container/image_grid_container.dart';
import 'package:mobile/src/models/app_state.dart';
import 'package:mobile/src/presentation/widgets/random_avatar.dart';
import 'package:root/auth.dart';
import 'package:root/flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

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
        );
      },
    );
  }
}
