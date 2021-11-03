import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/model/doctor.dart';
import 'package:flutter_app_test_resileyes/screens/details/detail_screen.dart';
import 'package:flutter_app_test_resileyes/tool.dart';

import '../constants.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailScreen.routeName, arguments: {'doctor':doctor});
      },
      child: Card(
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
              Text("Dr. " + doctor.name!, style: Theme.of(context).textTheme.bodyText1,),
              Text(doctor.occupation!, style: Theme.of(context).textTheme.caption,),
              RichText(
                text: TextSpan(children: [
                  WidgetSpan(
                      child: Icon(
                    Icons.star,
                    size: 17,
                    color: kGold,
                  )),
                  TextSpan(
                    text: Tool().calculAverage(doctor.listReviews!),
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
