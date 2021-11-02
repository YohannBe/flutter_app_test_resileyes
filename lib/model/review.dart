import 'package:flutter_app_test_resileyes/model/members.dart';

class Reviews {
  double ranking;
  Member member;
  String commentary;

  Reviews(this.ranking, this.member, this.commentary);

  Reviews.fromJson(Map<dynamic, dynamic> json)
      : ranking = json['ranking'],
        member = json['member'],
        commentary = json['commentary'];

  Map<String, dynamic> toJson() => {
        'ranking': ranking,
        'member': member,
        'commentary': commentary,
      };
}
