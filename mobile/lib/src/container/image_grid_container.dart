// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobile/src/models/app_state.dart';
import 'package:redux/redux.dart';
import 'package:root/root.dart';

class ImageGridContainer extends StatelessWidget {
  const ImageGridContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<ImageGrid> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ImageGrid>(
      converter: (Store<AppState> store) => store.state.flutterState.image,
      builder: builder,
    );
  }
}
