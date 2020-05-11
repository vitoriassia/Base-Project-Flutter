import 'package:app/controller/user.controller.dart';
import 'package:app/core/storage.dart';
import 'package:app/models/response.model.dart';
import 'package:app/models/user.model.dart';
import 'package:app/repositories/account.repository.dart';
import 'package:app/stores/user.store.dart';
import 'package:app/utils/response.message.dart';
import 'package:provider/provider.dart';

import '../locator.dart';

class LoginController {
  AccountRepository repository;
  UserController userController = new UserController();
  StorageService _service = locator<StorageService>();
  LoginController() {
    repository = new AccountRepository();
  }

  Future<bool> login(String email, String password, context) async {
    ResponseModel user = await repository.loginAccount(email, password);
    if (user.status) {
      UserModel newUserModel = UserModel.fromJson(user.data);
      Provider.of<UserStore>(context, listen: false).setUser(newUserModel);
      await _service.addstorage('id', newUserModel.toString());
      await _service.addstorage('access_token', newUserModel.token.toString());
    } else {
      responseMessage(user.data, 'error', context);
    }
    return user.status;
  }
}
