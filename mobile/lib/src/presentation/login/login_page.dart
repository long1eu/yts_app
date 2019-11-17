// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'dart:async';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/main.dart';
import 'package:mobile/src/presentation/widgets/store_mixin.dart';
import 'package:root/auth.dart';
import 'package:root/root.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with StoreMixin<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final FocusNode _nameNode = FocusNode();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  bool showName = false;
  bool showNextForPassword = false;

  @override
  void initState() {
    super.initState();

    _email.addListener(_onEmailChanged);
  }

  void _onEmailChanged() {
    if (EmailValidator.validate(_email.text) && store.state.authState.registerInfo.email != _email.text) {
      dispatch(GetEmailInfo(_email.text, _response));

      if (showName) {
        _name.clear();
        setState(() => showName = false);
      }
    }
  }

  void _response(dynamic action) {
    if (action is GetEmailInfoSuccessful) {
      if (action.email == _email.text) {
        if (action.providers.isNotEmpty) {
          setState(() => showNextForPassword = true);
        } else {
          final String username = action.email.split('@')[0];
          dispatch(UpdateRegisterData(displayName: username));
          _name.text = username;

          setState(() => showName = true);

          Future<void>.delayed(const Duration(milliseconds: 50), () => FocusScope.of(context).requestFocus(_nameNode));
        }
      }
    } else if (action is GetEmailInfoError) {
      _scaffoldKey.currentState.showSnackBar(const SnackBar(content: Text('Do you have internet connection?')));
    }
  }

  void _authResponse(dynamic action) {
    if (action is AuthenticateSuccessful) {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home, (_) => false);
    } else if (action is AuthenticateError) {
      _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(action.error.toString())));
    }
  }

  void _goToPasswordPage() {
    if (_name.text.isEmpty) {
      final String username = store.state.authState.registerInfo.email.split('@')[0];
      dispatch(UpdateRegisterData(displayName: username));
    }
    Navigator.pushNamed(context, AppRoutes.passwordPage);
  }

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: SvgPicture.asset('res/yts.svg'),
        actions: <Widget>[
          Container(
            margin: const EdgeInsetsDirectional.only(end: 8.0),
            child: IconButton(
              icon: SvgPicture.asset(
                'res/google.svg',
                width: 64.0,
                height: 64.0,
              ),
              onPressed: () {
                dispatch(Authenticate(type: CredentialType.google, response: _authResponse));
              },
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                controller: _email,
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'email',
                  suffixIcon: showNextForPassword
                      ? IconButton(
                          icon: Icon(Icons.navigate_next),
                          onPressed: _goToPasswordPage,
                        )
                      : null,
                ),
                onEditingComplete: () {
                  if (showName) {
                    FocusScope.of(context).requestFocus(_nameNode);
                  }
                },
              ),
              if (showName)
                Container(
                  margin: const EdgeInsetsDirectional.only(top: 8.0),
                  child: TextField(
                    controller: _name,
                    focusNode: _nameNode,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'username',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.navigate_next),
                        onPressed: _goToPasswordPage,
                      ),
                    ),
                    onChanged: (String name) {
                      dispatch(UpdateRegisterData(displayName: name));
                    },
                    onEditingComplete: _goToPasswordPage,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
