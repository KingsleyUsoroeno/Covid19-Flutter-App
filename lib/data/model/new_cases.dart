import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Covid19Cases {
  final int newCases;
  final String dayOfMonth;
  final charts.Color barColor;

  Covid19Cases({@required this.newCases, @required this.dayOfMonth, this.barColor});
}

List<Covid19Cases> newCasesRecord = [
  Covid19Cases(
    newCases: 600,
    dayOfMonth: "Apr 1",
    barColor: charts.ColorUtil.fromDartColor(Colors.red),
  ),
  Covid19Cases(
    newCases: 400,
    dayOfMonth: "Apr 2",
    barColor: charts.ColorUtil.fromDartColor(Colors.red),
  ),
  Covid19Cases(
    newCases: 400,
    dayOfMonth: "Apr 3",
    barColor: charts.ColorUtil.fromDartColor(Colors.red),
  ),
  Covid19Cases(
    newCases: 800,
    dayOfMonth: "Apr 4",
    barColor: charts.ColorUtil.fromDartColor(Colors.red),
  ),
  Covid19Cases(
    newCases: 1000,
    dayOfMonth: "Apr 5",
    barColor: charts.ColorUtil.fromDartColor(Colors.red),
  ),
  Covid19Cases(
    newCases: 1200,
    dayOfMonth: "Apr 6",
    barColor: charts.ColorUtil.fromDartColor(Colors.red),
  ),
  Covid19Cases(
    newCases: 1200,
    dayOfMonth: "Apr 7",
    barColor: charts.ColorUtil.fromDartColor(Colors.red),
  )
];
