import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/model/symptoms_model.dart';

import '../constants.dart';

class SymptomWidget extends StatelessWidget {
  const SymptomWidget({
    Key? key,
    required this.symptom,
  }) : super(key: key);

  final SymptomsModel symptom;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: kGreyBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Text(symptom.emoji),
          Text(symptom.symptom),
        ],
      ),
    );
  }
}