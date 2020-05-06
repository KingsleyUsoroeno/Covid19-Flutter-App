import 'package:covid19/screens/ui/home_screen.dart';
import 'package:covid19/screens/ui/information_screen.dart';
import 'package:covid19/screens/ui/note_screen.dart';
import 'package:covid19/screens/ui/statistics_screen.dart';
import 'package:covid19/screens/widgets/bottom_nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Color(0xFF473F97)));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid 19',
      theme: ThemeData(
        primaryColor: Color(0xFF473F97),
      ),
      routes: {
        '/home_screen': (BuildContext context) => HomeScreen(),
        '/information_screen': (BuildContext context) => InformationScreen(),
        '/note_screen': (BuildContext context) => NoteScreen(),
        '/statistics_screen': (BuildContext context) => StatisticScreen(),
      },
      home: BottomNavigationScreen(),
    );
  }
}
