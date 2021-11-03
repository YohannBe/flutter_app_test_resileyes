import 'dart:convert';
import 'dart:developer';

import 'package:flutter_app_test_resileyes/model/members.dart';
import 'package:flutter_app_test_resileyes/repositories/user_repository.dart';

class UserViewModel {
  UserRepository userRepository = UserRepository();

  Future<Member> retrieveUserData() async {
    var data = await userRepository.retrievedData();
    log(data.toString());
    return Member.fromJson(data[0]);
  }
}
