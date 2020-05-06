import 'package:charts_flutter/flutter.dart' as charts;
import 'package:covid19/data/model/new_cases.dart';
import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  final List<Covid19Cases> data;

  BarChart({this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Covid19Cases, String>> series = [
      charts.Series(
          id: "New Cases",
          data: data,
          domainFn: (Covid19Cases newCases, _) => newCases.dayOfMonth,
          measureFn: (Covid19Cases newCases, _) => newCases.newCases,
          colorFn: (Covid19Cases newCases, _) => newCases.barColor)
    ];
    return charts.BarChart(series, animate: true);
  }
}
