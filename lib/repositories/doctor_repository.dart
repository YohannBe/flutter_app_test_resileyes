import 'package:flutter_app_test_resileyes/network/fetch_doctors_data.dart';

class DoctorRepository{
  FetchDoctorsData doctorsData = FetchDoctorsData();

  Future<List<dynamic>> retrievedData() async {
    return doctorsData.readJson();
  }
}