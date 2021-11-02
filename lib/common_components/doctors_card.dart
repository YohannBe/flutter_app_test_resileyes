import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/model/doctor.dart';

import '../constants.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    Key? key, required this.doctor,
  }) : super(key: key);

  final Doctor doctor;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(
              doctor.imageUrl!,
              width: 50,
            ),
            Text(doctor.name!),
            Text(doctor.occupation!),
            RichText(
              text: TextSpan(children: [
                WidgetSpan(child: Icon(Icons.star, size: 17, color: kGold,)),
                TextSpan(
                  text: "4.8",
                  style: TextStyle(color: Colors.black),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}