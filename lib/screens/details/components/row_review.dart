import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/model/doctor.dart';

import '../../../constants.dart';
import '../../../tool.dart';

class RowReview extends StatelessWidget {
  const RowReview({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: "Reviews",
              style: Theme.of(context).textTheme.bodyText1,
            ),
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
            TextSpan(
              text: " (${doctor.listReviews!.length})",
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ]),
        ),
        Spacer(),
        Text("See all")
      ],
    );
  }
}