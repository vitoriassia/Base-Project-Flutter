import 'package:app/controller/user.controller.dart';
import 'package:app/repositories/account.repository.dart';

class LoginController {
  AccountRepository repository;
  UserController userController = new UserController();

  LoginController() {
    repository = new AccountRepository();
  }

  Future<bool> login(String email, String password, context) async {
    //   ResponseModel user = await repository.loginAccount(email, password);
    //   if (user.status) {
    //     UserModel newUserModel = UserModel.fromJson(user.data);
    //     Provider.of<UserStore>(context, listen: false).setUser(newUserModel);
    //     await userController.getGroups(newUserModel.id, context);
    //     await _service.addstorage('id', newUserModel.toString());
    //     await _service.addstorage('access_token', newUserModel.token.toString());
    //   } else {
    //     responseMessage(user.data, 'error', context);
    //   }
    //   return user.status;
    // }
  }
}
