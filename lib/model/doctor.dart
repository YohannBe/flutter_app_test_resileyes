import 'package:flutter_app_test_resileyes/model/location.dart';
import 'package:flutter_app_test_resileyes/model/review.dart';

class Doctor {
  String? name, imageUrl, occupation, description;
  Location? location;
  List<Reviews>? listReviews;

  Doctor(
      {this.name,
      this.imageUrl,
      this.description,
      this.occupation,
      this.location,
      this.listReviews});

  Doctor.fromJson(Map<dynamic, dynamic> json)
      : name = json['name'],
        imageUrl = json['imageUrl'],
        occupation = json['occupation'],
        description = json['desc'],
        location = json['location'],
        listReviews = json['reviews'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'imageUrl': imageUrl,
    'occupation': occupation,
    'desc': description,
    'location': location,
    'reviews': listReviews,
  };
}
