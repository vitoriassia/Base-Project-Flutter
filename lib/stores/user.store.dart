import 'package:app/models/user.model.dart';
import 'package:flutter/material.dart';

import '../enums.dart';

class UserStore with ChangeNotifier {
  Status _status;
  UserModel _user;
  bool _firstTime = true;

  UserModel get user => _user;

  Status get status => _status;

  bool get firstTime => _firstTime;

  setUser(UserModel newUser) {
    _user = newUser;
  }

  setFirstTime(bool firstTime) {
    _firstTime = firstTime;
    notifyListeners();
  }

  setStatus(Status newStatus) {
    _status = newStatus;
    notifyListeners();
  }
}
