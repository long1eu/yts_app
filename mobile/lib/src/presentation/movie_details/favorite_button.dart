// File created by
// Lung Razvan <long1eu>
// on 18/11/2019

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobile/src/container/user_container.dart';
import 'package:mobile/src/models/app_state.dart';
import 'package:root/auth.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({Key key, @required this.movieId}) : super(key: key);

  final int movieId;

  void _onPressed(BuildContext context) {
    StoreProvider.of<AppState>(context).dispatch(AddLike(movieId));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topStart,
      child: Material(
        type: MaterialType.transparency,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: UserContainer(
            builder: (BuildContext context, User user) {
              final bool isSelected = user.likes.contains(movieId) ?? false;
              return IconButton(
                icon: Icon(
                  isSelected ? Icons.favorite : Icons.favorite_border,
                  color: isSelected ? Theme.of(context).accentColor : Colors.white,
                ),
                onPressed: isSelected ? null : () => _onPressed(context),
              );
            },
          ),
        ),
      ),
    );
  }
}
