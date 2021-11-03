import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/constants.dart';
import 'package:flutter_app_test_resileyes/model/doctor.dart';

import 'components/body_detail.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
  static const String routeName = '/detail_screen';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    final Doctor doctor = arguments['doctor'];
    log(doctor.name!);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: kWhite),
        actions: [
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) {
              return {'Logout', 'Settings'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      body: BodyDetailScreen(doctor),
    );
  }
}
