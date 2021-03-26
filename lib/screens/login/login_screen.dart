import 'package:app/core/view_models/login_viewmodel.dart';
import 'package:app/screens/base_view.dart';
import 'package:app/screens/login/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'sign_screen';

  LoginScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
        onViewModelReady: (model) =>
            model.setContextLoginViewModel(context: context),
        builder: (context, model, _) => Scaffold(
              body: Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/background-default.jpg',
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                    alignment: Alignment.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20, left: 20),
                          child: Hero(
                            tag: 'logo',
                            child: Image.asset(
                              'assets/icons/logo_principal.png',
                            ),
                          ),
                        ),
                        LoginForm(),
                        Image.asset(
                          'assets/icons/logo_footer.png',
                          height: 26,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }
}
