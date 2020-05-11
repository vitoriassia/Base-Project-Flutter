import 'package:app/models/response.model.dart';
import 'package:app/models/user.model.dart';

class AccountRepository {
  //final Api _api = locator<Api>();

  Future<ResponseModel> loginAccount(email, password) async {
    //autenticacao
    // Se tiver api seria algo assim :
    // var response;
    // response = await _api.login(email, password);

    // return ResponseModel.fromResponseLogin(response);

    return ResponseModel(
      data: UserModel(
          id: 1, name: 'Vitor Ferreira Iassia', email: 'iassiavitor@gmail.com'),
      status: true,
    );
  }
}
