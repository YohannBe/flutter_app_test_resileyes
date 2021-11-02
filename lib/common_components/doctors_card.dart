import 'package:flutter/material.dart';

import '../constants.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(
              "assets/persos/alice.png",
              width: 50,
            ),
            Text("Dr.Alice"),
            Text("Therapist"),
            RichText(
              text: TextSpan(children: [
                WidgetSpan(child: Icon(Icons.star, size: 17, color: kGold,)),
                TextSpan(
                  text: "4.8",
                  style: TextStyle(color: Colors.black),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}