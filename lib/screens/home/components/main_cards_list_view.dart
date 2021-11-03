import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/common_components/main_card.dart';
import 'package:flutter_app_test_resileyes/model/main_card_model.dart';

class MainCardsListView extends StatelessWidget {
  const MainCardsListView({
    Key? key,
    required this.listMainCard,
  }) : super(key: key);

  final List<MainCardModel> listMainCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listMainCard.length,
        itemBuilder: (context, index) {
          return MainCard(mainCardModel: listMainCard[index], index: index);
        },
      ),
    );
  }
}