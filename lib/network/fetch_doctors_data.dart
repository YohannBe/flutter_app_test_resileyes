import 'dart:convert';
import 'package:flutter/services.dart';

class FetchDoctorsData {
  Future<List<dynamic>> readJson() async {
    final response = await rootBundle.loadString('assets/data/doctor.json');
    var data = jsonDecode(response) as List<dynamic>;
    return data;
  }
}
