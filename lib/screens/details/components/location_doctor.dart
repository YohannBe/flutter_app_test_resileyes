import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/model/doctor.dart';

import '../../../constants.dart';

class LocationDoctor extends StatelessWidget {
  const LocationDoctor({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.location_on_outlined, color: kPrimaryColor,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(doctor.location!.name, style: Theme.of(context).textTheme.bodyText1,),
            Text(doctor.location!.address),
          ],
        )
      ],
    );
  }
}
