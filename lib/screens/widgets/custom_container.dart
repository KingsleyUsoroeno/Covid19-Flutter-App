import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final String heading;
  final String subTitle;

  CustomContainer({this.color, this.heading, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(heading,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(height: 20.0),
              Text(subTitle,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}
