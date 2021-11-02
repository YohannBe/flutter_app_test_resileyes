import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_app_test_resileyes/model/doctor.dart';
import 'package:flutter_app_test_resileyes/model/location.dart';
import 'package:flutter_app_test_resileyes/model/members.dart';
import 'package:flutter_app_test_resileyes/model/review.dart';

class FetchDoctorsData{

  Future<List<dynamic>> readJson() async {
    final response = await rootBundle.loadString('assets/data/doctor.json');

    var data = json.decode(response) as List<dynamic>;
    return data;
  }
}