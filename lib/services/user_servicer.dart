import 'dart:async';

import 'package:estados/models/user.dart';

class _UserService {
  User _user;
  StreamController _userStreamController =
      new StreamController<User>.broadcast();

  User get user => this._user;

  bool get userExists => this._user != null ? true : false;

  Stream<User> get userStream => _userStreamController.stream;

  void loadUSer(User usr) {
    this._user = usr;
    this._userStreamController.add(usr);
  }

  void changeAge(int age) {
    this.user.edad = age;
    this._userStreamController.add(this._user);
  }

  dispose() {
    this._userStreamController?.close();
  }
}

final userService = _UserService();
