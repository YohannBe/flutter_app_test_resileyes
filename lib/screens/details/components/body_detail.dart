import 'package:flutter/material.dart';
import 'package:flutter_app_test_resileyes/constants.dart';
import 'package:flutter_app_test_resileyes/model/doctor.dart';
import 'package:flutter_app_test_resileyes/screens/details/components/row_review.dart';

import 'list_commentaries.dart';
import 'location_doctor.dart';

class BodyDetailScreen extends StatelessWidget {
  const BodyDetailScreen(this.doctor, {Key? key}) : super(key: key);

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            doctor.imageUrl!,
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(top: regularPadding),
            child: Text(
              "Dr. " + doctor.name!,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: regularPadding+10),
            child: Text(
              doctor.occupation!,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: regularPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: regularPadding),
                  child: Icon(
                    Icons.phone_outlined,
                    color: kWhite,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: regularPadding),
                  child: Icon(
                    Icons.chat,
                    color: kWhite,
                  ),
                )
              ],
            ),
          ),
           Container(
             height: 470,
              decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About the doctor:", style: Theme.of(context).textTheme.headline6,),
                    Text(doctor.description!, style: Theme.of(context).textTheme.bodyText1,),
                    Spacer(),
                    RowReview(doctor: doctor),
                    Spacer(),
                    ListCommentaries(doctor: doctor),
                    Spacer(),
                    Text("Location", style: Theme.of(context).textTheme.headline6,),
                    LocationDoctor(doctor: doctor),
                    Spacer(),
                    Row(
                      children: [
                        Text("Consultation price"),
                        Spacer(),
                        Text("\$ 52", style: Theme.of(context).textTheme.headline6,)
                      ],
                    ),

                    ElevatedButton( style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 40),
                      primary: kPrimaryColor,
                    ),
                        onPressed: (){},
                        child: Text("Book appointment"))
                  ],
                ),
              ),
            ),

        ],
      ),
    );
  }
}

