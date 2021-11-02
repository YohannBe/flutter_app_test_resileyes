import 'package:flutter_app_test_resileyes/model/location.dart';
import 'package:flutter_app_test_resileyes/model/review.dart';

class Doctor {
  String name, imageUrl, occupation, description;
  Location location;
  List<Reviews> listReviews;

  Doctor(this.name, this.imageUrl, this.description, this.occupation,
      this.location, this.listReviews);
}
