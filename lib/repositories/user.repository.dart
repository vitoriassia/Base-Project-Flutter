import 'package:app/models/response.model.dart';
import 'package:app/models/user.model.dart';

class UserRepository {
  //Api _api = locator<Api>();

  Future<ResponseModel> editUser(
    UserModel userModel,
  ) async {
    // var response;
    // response = await _api.editUser(userModel);

    // return ResponseModel.fromResponseEditUser(response);
  }

  Future getUser({int id}) async {
    // var response;
    // response = await _api.getUser(id);

    // return response;
  }
}
