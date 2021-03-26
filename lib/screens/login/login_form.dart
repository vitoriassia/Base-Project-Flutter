import 'package:app/core/view_models/login_viewmodel.dart';
import 'package:app/sharedWidgets/busy_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constant.dart';
import '../../enums.dart';

class LoginForm extends StatelessWidget {
  static final id = 'sign.view';

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginViewModel>(
      builder: (context, model, _) => Column(
        children: <Widget>[
          Form(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    initialValue: 'vitor.iassia@innovareti.com.br',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                    ),
                    onChanged: (value) {
                      model.email = value;
                    },
                    cursorColor: Theme.of(context).accentColor,
                    decoration: inputDecotationBlack(labelText: 'E-mail'),
                    autovalidateMode: AutovalidateMode.disabled,
                    autocorrect: false,
                    validator: (value) =>
                        (value.isEmpty) ? "E-mail inválido" : null,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    initialValue: 'password',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                    ),
                    cursorColor: Theme.of(context).accentColor,
                    decoration: inputDecotationBlack(labelText: 'Senha'),
                    obscureText: true,
                    autocorrect: false,
                    onChanged: (value) {
                      model.password = value;
                    },
                    validator: (value) =>
                        (value.isEmpty) ? "Senha inválida" : null,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        BusyButton(
                          isOutline: false,
                          isBusy: model.state == ViewState.busy,
                          onPressed: () async => await model.login(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
