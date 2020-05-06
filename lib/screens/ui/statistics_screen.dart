import 'package:covid19/data/model/new_cases.dart';
import 'package:covid19/screens/widgets/bar_chart.dart';
import 'package:covid19/screens/widgets/custom_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatisticScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 18.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.notifications_none, color: Colors.white),
                    iconSize: 30.0,
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text('Statistics',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    CustomContainer(
                        color: Color(0xFFFFB259), heading: "Affected", subTitle: "100,000"),
                    SizedBox(width: 10.0),
                    CustomContainer(color: Color(0xFFFF5959), heading: "Death", subTitle: "50,000")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0, bottom: 10.0),
                child: Row(
                  children: <Widget>[
                    CustomContainer(
                        color: Color(0xFF4CD97B), heading: "Recovered", subTitle: "20,000"),
                    SizedBox(width: 8.0),
                    CustomContainer(
                        color: Color(0xFF4DB5FF), heading: "Active", subTitle: "300,000"),
                    SizedBox(width: 8.0),
                    CustomContainer(
                        color: Color(0xFF9059FF), heading: "Serious", subTitle: "12,000"),
                  ],
                ),
              ),
              SizedBox(height: 8.0),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40.0),
                            topLeft: Radius.circular(40.0),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 20.0),
                            Text('Daily New Cases',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat')),
                            SizedBox(height: 20.0),
                            Expanded(
                              child: Container(
                                height: 400,
                                width: double.infinity,
                                child: BarChart(data: newCasesRecord),
                              ),
                            )
                          ],
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
