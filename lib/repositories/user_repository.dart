import 'dart:developer';

import 'package:flutter_app_test_resileyes/network/fetch_user_data.dart';

class UserRepository{
  FetchUserData userData = FetchUserData();

  Future<List<dynamic>> retrievedData() async {
    final response = await userData.readJson();
    return response;
  }
}