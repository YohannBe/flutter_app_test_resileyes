import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/screens/details/detail_screen.dart';
import 'package:flutter_app_test_resileyes/screens/home/home_screen.dart';
import 'package:flutter_app_test_resileyes/user_viewmodel.dart';

UserViewModel userViewModel = UserViewModel();

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) =>   HomeScreen(userViewModel),
  DetailScreen.routeName: (context) =>  DetailScreen(),
};