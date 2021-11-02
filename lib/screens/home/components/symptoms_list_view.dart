import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/common_components/symptom_widget.dart';
import 'package:flutter_app_test_resileyes/model/symptoms_model.dart';

class SymptomsListView extends StatelessWidget {
  const SymptomsListView({
    Key? key,
    required this.listSymptoms,
  }) : super(key: key);

  final List<SymptomsModel> listSymptoms;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listSymptoms.length,
          itemBuilder: (context, index) {
            return SymptomWidget(symptom: listSymptoms[index]);
          }),
    );
  }
}
