import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/common_components/doctors_card.dart';
import 'package:flutter_app_test_resileyes/common_components/loading_widget.dart';
import 'package:flutter_app_test_resileyes/model/doctor.dart';
import 'package:flutter_app_test_resileyes/repositories/doctor_repository.dart';
import 'package:flutter_app_test_resileyes/screens/home/home_viewmodel.dart';

class GridDoctors extends StatefulWidget {
  const GridDoctors(this.homeViewModel, {Key? key}) : super(key: key);

  final HomeViewModel homeViewModel;

  @override
  _GridDoctorsState createState() => _GridDoctorsState();
}

class _GridDoctorsState extends State<GridDoctors> {
  @override
  Widget build(BuildContext context) {
    DoctorRepository doctorsData = DoctorRepository();
    return FutureBuilder(
      future: widget.homeViewModel.retrieveAndSendListDoctors(),
      builder: (context, AsyncSnapshot<List<Doctor>> snapshot) {
        if (snapshot.hasData) {
          return GridView.count(
            shrinkWrap: true,
            primary: false,
            crossAxisCount: 2,
            children: [
              for (int i = 0; i < snapshot.data!.length; i++)
                DoctorCard(doctor: snapshot.data![i])
            ],
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text("${snapshot.error}"),
          );
        } else {
          return Center(
            child: Loading(),
          );
        }
      },
    );
  }
}