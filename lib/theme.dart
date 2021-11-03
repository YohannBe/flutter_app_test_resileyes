import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData buildThemeData() {
  return ThemeData(
    appBarTheme: appBarTheme(),
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: buildTextTheme(),
    primaryColor: kPrimaryColor,
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme:
        TextTheme(headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18)),
  );
}

TextTheme buildTextTheme() {
  return const TextTheme(
      bodyText1: TextStyle(color: kBlack),
      caption: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor),
      subtitle1: TextStyle(color: kTextColor),
      subtitle2: TextStyle(color: kTextSubtitleColor),
      headline3: TextStyle(color: kBlack),
      headline4: TextStyle(color: kWhite),
      headline6: TextStyle(color: kBlack)
  );
}
