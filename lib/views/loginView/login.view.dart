import 'package:app/views/loginView/login.form.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  static const String id = 'sign_screen';

  LoginView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/background-default.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Container(
            color: Colors.black.withOpacity(0.60),
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: LoginForm(),
          ),
        ],
      ),
    );
  }
}
