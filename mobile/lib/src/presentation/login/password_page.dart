// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'package:flutter/material.dart';
import 'package:mobile/main.dart';
import 'package:mobile/src/container/image_grid_container.dart';
import 'package:mobile/src/container/register_info_container.dart';
import 'package:mobile/src/presentation/widgets/random_avatar.dart';
import 'package:mobile/src/presentation/widgets/store_mixin.dart';
import 'package:root/auth.dart';
import 'package:root/root.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key key}) : super(key: key);

  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> with StoreMixin<PasswordPage> {
  final TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  bool autovalidate = false;

  void _validate() {
    if (_formKey.currentState.validate()) {
      dispatch(Authenticate(type: CredentialType.email, response: _response));
    }

    setState(() => autovalidate = true);
  }

  void _response(dynamic action) {
    if (action is AuthenticateSuccessful) {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home, (_) => false);
    } else if (action is AuthenticateError) {
      _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(action.error.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Password'),
      ),
      body: RegisterInfoContainer(
        builder: (BuildContext context, RegisterInfo info) {
          return Container(
            margin: const EdgeInsets.all(16.0),
            child: Center(
              child: ListView(
                children: <Widget>[
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      final ImageGrid image = ImageGrid();
                      dispatch(SetImageGrid(image));
                      dispatch(UpdateRegisterData(photo: image.encode));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(16.0),
                      child: ImageGridContainer(
                        builder: (BuildContext context, ImageGrid image) {
                          return RandomAvatar(
                            image: image,
                          );
                        },
                      ),
                    ),
                  ),
                  Text(
                    info.displayName ?? info.email,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 24.0),
                    child: Form(
                      key: _formKey,
                      autovalidate: autovalidate,
                      child: TextFormField(
                        controller: _password,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        autofocus: true,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'password',
                          suffixIcon: IconButton(
                            icon: Icon(Icons.navigate_next),
                            onPressed: _validate,
                          ),
                        ),
                        onChanged: (String password) {
                          dispatch(UpdateRegisterData(password: password));
                        },
                        validator: (String password) {
                          if (password.isEmpty || password.length < 6) {
                            return 'at lest 6 characters long';
                          }

                          return null;
                        },
                        onEditingComplete: _validate,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
