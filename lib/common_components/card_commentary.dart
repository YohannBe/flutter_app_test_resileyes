import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/model/doctor.dart';
import 'package:flutter_app_test_resileyes/model/review.dart';

import '../constants.dart';

class CardCommentary extends StatelessWidget {
  const CardCommentary({
    Key? key,
    required this.review,
  }) : super(key: key);

  final Reviews review;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    review.member.imageUrl,
                    height: 40,
                  ),
                  Spacer(),
                  Text(review.member.name, style: Theme.of(context).textTheme.bodyText1,),
                  Spacer(),
                  RichText(
                    text: TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                            Icons.star,
                            size: 17,
                            color: kGold,
                          )),
                      TextSpan(
                        text: review.ranking
                            .toString(), style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ]),
                  ),
                ],
              ),
              Text(review.commentary,
                  style: Theme.of(context).textTheme.bodyText1,
                  overflow: TextOverflow.ellipsis)
            ],
          ),
        ),
      ),
    );
  }
}