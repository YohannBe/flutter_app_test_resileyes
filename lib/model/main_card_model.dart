import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/model/enum_status.dart';

class MainCardModel {
  Status status;
  final String visitPlace, callToActionText;
  final VoidCallback press;
  final IconData iconData;

  MainCardModel(
      this.status,
      this.iconData,
      this.callToActionText,
      this.visitPlace,
      this.press,
      );


}
