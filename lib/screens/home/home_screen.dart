import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/screens/home/home_viewmodel.dart';

import 'components/body_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    HomeViewModel homeViewModel = HomeViewModel();
    return Scaffold(
      appBar: AppBar(
        title: Text("Alain"),
      ),
      body: BodyHome(homeViewModel),
    );
  }
}
