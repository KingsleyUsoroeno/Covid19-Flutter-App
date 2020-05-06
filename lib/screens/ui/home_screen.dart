import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0), bottomRight: Radius.circular(40.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20.0),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      icon: Icon(Icons.notifications_none, color: Colors.white),
                      iconSize: 30.0,
                      onPressed: () {}),
                ),
                Text('Covid-19',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                SizedBox(height: 40.0),
                Text('Are you feeling sick?',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0)),
                SizedBox(height: 20.0),
                Expanded(
                  child: Text(
                      'If you feel sick with any of covid-19 symptoms please call or SMS us immediately for help.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat')),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: Color(0xFFFF4D58), borderRadius: BorderRadius.circular(40.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.call, color: Colors.white, size: 20.0),
                              SizedBox(width: 10.0),
                              Text(
                                'Call Now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Expanded(
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: Color(0xFF4D79FF), borderRadius: BorderRadius.circular(40.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.message, color: Colors.white, size: 20.0),
                              SizedBox(width: 10.0),
                              Text(
                                'Send SMS',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.0)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Prevention',
                    style: TextStyle(
                        fontSize: 20.0, fontFamily: 'Montserrat', fontWeight: FontWeight.bold)),
                SizedBox(height: 18.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            height: 90.0,
                            image: AssetImage('assets/images/social_distance.png'),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Avoid Close Contact',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            height: 90.0,
                            image: AssetImage('assets/images/wash_hands.png'),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Clean your hands often',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            height: 90.0,
                            image: AssetImage('assets/images/face_mask.png'),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Wear a facemask',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 140,
                  width: double.infinity,
                  child: Image.asset("assets/images/image_banner.png"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
