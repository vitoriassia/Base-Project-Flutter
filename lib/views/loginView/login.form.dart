import 'package:app/utils/navigation.dart';
import 'package:app/view-models/login.viewmodel.dart';
import 'package:app/widget/busy.button.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../enums.dart';
import '../base.view.dart';

class LoginForm extends StatelessWidget {
  static final id = 'sign.view';

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
        builder: (contexte, model, _) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(40),
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset(
                      'assets/icons/corporate-icon-white.png',
                      height: 100,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Container(
                        height: 300,
                        child: Form(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  initialValue:
                                      'vitor.iassia@innovareti.com.br',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  onChanged: (value) {
                                    model.email = value;
                                  },
                                  cursorColor: Colors.white,
                                  decoration: inputDecotationInvisible(
                                      labelText: 'E-mail'),
                                  autovalidate: false,
                                  autocorrect: false,
                                  validator: (value) => (value.isEmpty)
                                      ? "E-mail inválido"
                                      : null,
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                TextFormField(
                                  initialValue: 'password',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  cursorColor: Colors.white,
                                  decoration: inputDecotationInvisible(
                                      labelText: 'Senha'),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      BusyButton(
                                        isOutline: false,
                                        isBusy: model.state == ViewState.busy,
                                        onPressed: () async {
                                          //   if (await model.login(context))
                                          //     navegationTowithAnimation(
                                          //         context: context,
                                          //         page: HomeView());
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    navegationBack(context: context);
                                  },
                                  child: Text(
                                    'Voltar',
                                    style: TextStyle(color: Colors.white),
                                    // style: kLinkTextStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ));
  }
}
