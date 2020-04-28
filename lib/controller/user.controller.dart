import 'package:app/models/user.model.dart';
import 'package:app/repositories/user.repository.dart';
import 'package:provider/provider.dart';

class UserController {
  UserRepository repository;

  UserController() {
    repository = new UserRepository();
  }

  Future<void> editUser({UserModel userModel, context}) async {
    // ResponseModel user = await repository.editUser(userModel);
    // if (user.status) {
    //   var newUser = await repository.getUser(id: userModel.id);
    //   Provider.of<UserStore>(context, listen: false)
    //       .setUser(UserModel.fromJson(newUser.data["data"][0]));
    //   responseMessage(user.message, 'sucess', context);
    // } else {
    //   responseMessage(user.message, 'error', context);
    // }
  }
}
