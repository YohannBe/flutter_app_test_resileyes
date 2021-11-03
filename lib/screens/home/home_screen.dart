import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/common_components/loading_widget.dart';
import 'package:flutter_app_test_resileyes/constants.dart';
import 'package:flutter_app_test_resileyes/screens/home/home_viewmodel.dart';
import 'package:flutter_app_test_resileyes/user_viewmodel.dart';

import 'components/body_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.userViewModel, {Key? key}) : super(key: key);

  static const String routeName = '/home_screen';

  final UserViewModel userViewModel;

  @override
  Widget build(BuildContext context) {
    HomeViewModel homeViewModel = HomeViewModel();
    return Scaffold(
      appBar: AppBar(

          title: FutureBuilder(
              future: userViewModel.retrieveUserData(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Row(
                    children: [
                      Text(snapshot.data!.name + "👋", style: TextStyle(
                        color: kBlack
                      ),),
                      Spacer(),
                      Image.asset(snapshot.data!.imageUrl, height: 60,),
                    ],
                  );
                } else if(snapshot.hasError){
                  log(snapshot.error.toString());
                  return Center(
                    child: Text("${snapshot.error.toString()}"),
                  );
                }
                else {
                  return Loading();
                }
              })),
      body: BodyHome(homeViewModel),
    );
  }
}
