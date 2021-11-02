import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/common_components/main_card.dart';
import 'package:flutter_app_test_resileyes/constants.dart';
import 'package:flutter_app_test_resileyes/model/enum_status.dart';
import 'package:flutter_app_test_resileyes/model/main_card_model.dart';

class BodyHome extends StatelessWidget {
  BodyHome({Key? key}) : super(key: key);

  MainCardModel mainCardModelAdd = MainCardModel(Status.add, Icons.add,
      "Make an appointment", "Clinic visit", () {});

  MainCardModel mainCardModelHome = MainCardModel(Status.defined, Icons.home_outlined,
      "Call the doctor home", "Home visit", () {});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MainCard(
                      mainCardModel: mainCardModelAdd,
                    ),
                    MainCard(
                      mainCardModel: mainCardModelHome,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
