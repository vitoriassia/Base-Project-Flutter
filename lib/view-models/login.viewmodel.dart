import 'package:app/controller/login.controller.dart';

import '../enums.dart';
import 'base.viewmodel.dart';

class LoginViewModel extends BaseViewModel {
  String email = 'vitor.iassia@innovareti.com.br';
  String password = 'password';
  LoginController controllerSignIn = new LoginController();

  @override
  Future<List> loadData() async {
    return null;
  }

  Future<bool> login(context) async {
    setState(ViewState.busy);
    var navigation =
        await controllerSignIn.login(this.email, this.password, context);
    setState(ViewState.idle);
    return navigation;
  }
}
