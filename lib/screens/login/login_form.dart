import 'package:app/screens/base_view.dart';
import 'package:app/screens/home/home_screen.dart';
import 'package:app/utils/navigation.dart';
import 'package:app/sharedWidgets/busy.button.dart';
import 'package:app/view_models/login_viewmodel.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../enums.dart';

class LoginForm extends StatelessWidget {
  static final id = 'sign.view';

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
        builder: (contexte, model, _) => SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      child: Hero(
                        tag: 'logo',
                        child: Image.asset(
                          'assets/icons/logo_principal.png',
                        ),
                      ),
                    ),
                    Container(
                      child: Form(
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
                                decoration:
                                    inputDecotationBlack(labelText: 'E-mail'),
                                autovalidate: false,
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
                                decoration:
                                    inputDecotationBlack(labelText: 'Senha'),
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
                                      onPressed: () async {
                                        if (await model.login(context))
                                          navegationTowithAnimationRemoveUtils(
                                              context: context,
                                              page: HomeView());
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              // GestureDetector(
                              //   onTap: () {
                              //     navegationBack(context: context);
                              //   },
                              //   child: Text(
                              //     'Voltar',
                              //     style: TextStyle(
                              //         color: Theme.of(context).accentColor),
                              //     style: kLinkTextStyle,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/icons/logo_footer.png',
                      height: 26,
                    ),
                  ],
                ),
              ),
            ));
  }
}
