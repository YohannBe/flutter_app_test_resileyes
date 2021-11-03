import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/common_components/card_commentary.dart';
import 'package:flutter_app_test_resileyes/model/doctor.dart';

class ListCommentaries extends StatelessWidget {
  const ListCommentaries({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: doctor.listReviews!.length,
          itemBuilder: (context, index) {
            return CardCommentary(review: doctor.listReviews![index]);
          }),
    );
  }
}