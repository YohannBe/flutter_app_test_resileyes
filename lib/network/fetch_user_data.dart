import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:flutter_app_test_resileyes/model/members.dart';

class FetchUserData {
  Future <List<dynamic>> readJson() async {
    final response = await rootBundle.loadString('assets/data/perso.json');
    var data = jsonDecode(response) as List<dynamic>;
    return data;
  }
}