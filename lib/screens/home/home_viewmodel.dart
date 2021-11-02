import 'package:flutter_app_test_resileyes/model/doctor.dart';
import 'package:flutter_app_test_resileyes/model/location.dart';
import 'package:flutter_app_test_resileyes/model/members.dart';
import 'package:flutter_app_test_resileyes/model/review.dart';
import 'package:flutter_app_test_resileyes/repositories/doctor_repository.dart';

class HomeViewModel {
  DoctorRepository doctorRepository = DoctorRepository();

  Future<List<Doctor>> retrieveAndSendListDoctors() async {
    var data = await doctorRepository.retrievedData();

    List<Doctor> doctors = [];

    for (var element in data) {
      Map obj = element;

      String name = obj['name'];
      String imageUrl = obj['imageUrl'];
      String occupation = obj['occupation'];
      String desc = obj['desc'];

      Location nLocation = Location.fromJson(obj['location']);

      List reviews = obj['reviews'];
      List<Reviews> listReviews = [];

      for (var element in reviews) {
        double ranking = element['ranking'];
        String commentary = element['commentary'];
        Member member = Member.fromJson(element['member']);
        listReviews.add(Reviews(ranking, member, commentary));
      }

      Doctor doctor = Doctor();
      doctor.name = name;
      doctor.occupation = occupation;
      doctor.imageUrl = imageUrl;
      doctor.location = nLocation;
      doctor.description = desc;
      doctor.listReviews = listReviews;
      doctors.add(doctor);
    }
    return doctors;
  }
}
