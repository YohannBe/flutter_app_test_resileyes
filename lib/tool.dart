import 'model/review.dart';

class Tool{

  String calculAverage(List<Reviews> list){
    double sums = 0;
    for (var element in list) {
      sums = sums + element.ranking;
    }
    return (sums/ list.length).toStringAsFixed(1);
  }
}