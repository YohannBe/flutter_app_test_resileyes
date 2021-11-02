import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/model/enum_status.dart';
import 'package:flutter_app_test_resileyes/model/main_card_model.dart';

import '../constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
    required this.mainCardModel,
  }) : super(key: key);

  final mainCardModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: mainCardModel.status == Status.add ? kPrimaryColor : kWhite,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          width: 150,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FloatingActionButton(
                  backgroundColor: mainCardModel.status == Status.add
                      ? kWhite
                      : kGreyBackground,
                  child: Icon(
                    mainCardModel.iconData,
                    color: kPrimaryColor,
                  ),
                  onPressed: mainCardModel.press),
              Spacer(),
              Text(
                mainCardModel.visitPlace,
                style: TextStyle(
                    color:
                        mainCardModel.status == Status.add ? kWhite : kBlack),
              ),
              Text(
                mainCardModel.callToActionText,
                style: TextStyle(
                    color:
                        mainCardModel.status == Status.add ? kWhite : kBlack),
              ),
            ],
          ),
        ),
      ),
    );
  }
}