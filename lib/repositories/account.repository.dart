import 'package:app/models/response.model.dart';
import 'package:app/models/user.model.dart';

class AccountRepository {
  //final Api _api = locator<Api>();

  Future<ResponseModel> loginAccount(email, password) async {
    //autenticacao
    //chamada para api
    // var response;
    // response = await _api.login(email, password);

    // return ResponseModel.fromResponseLogin(response);
  }

  Future<ResponseModel> createAccount(UserModel user, passwordConfirm) async {
    //autenticacao
    //chamada para api
    // var response;
    // response = await _api.createUser(user, passwordConfirm);

    // return ResponseModel.fromResponseCreateUser(response);
  }
}
