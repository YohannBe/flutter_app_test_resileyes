import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/common_components/doctors_card.dart';
import 'package:flutter_app_test_resileyes/constants.dart';

import 'package:flutter_app_test_resileyes/model/enum_status.dart';
import 'package:flutter_app_test_resileyes/model/main_card_model.dart';
import 'package:flutter_app_test_resileyes/model/symptoms_model.dart';
import 'package:flutter_app_test_resileyes/screens/home/components/symptoms_list_view.dart';

import 'main_cards_list_view.dart';

class BodyHome extends StatelessWidget {
  BodyHome({Key? key}) : super(key: key);

  List<MainCardModel> listMainCard = [
    MainCardModel(
        Status.add, Icons.add, "Make an appointment", "Clinic visit", () {}),
    MainCardModel(Status.defined, Icons.home_outlined, "Call the doctor home",
        "Home visit", () {}),
    MainCardModel(Status.defined, Icons.home_outlined, "Call the doctor home",
        "Home visit", () {}),
  ];

  List<SymptomsModel> listSymptoms = [
    SymptomsModel("😖", "Temperature"),
    SymptomsModel("🤧", "Snuffle"),
    SymptomsModel("🤕", "Headache"),
    SymptomsModel("😖", "Temperature"),
    SymptomsModel("🤧", "Snuffle"),
    SymptomsModel("🤕", "Headache"),
    SymptomsModel("😖", "Temperature"),
    SymptomsModel("🤧", "Snuffle"),
    SymptomsModel("🤕", "Headache"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MainCardsListView(listMainCard: listMainCard),
                Text("What are your symptoms?"),
                SymptomsListView(listSymptoms: listSymptoms),
                Text("Popular doctors"),
                GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisCount: 2,
                  children: [
                    DoctorCard(),
                    DoctorCard(),
                    DoctorCard(),
                    DoctorCard(),
                    DoctorCard(),
                    DoctorCard(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
