import 'package:covid19/screens/ui/home_screen.dart';
import 'package:covid19/screens/ui/information_screen.dart';
import 'package:covid19/screens/ui/note_screen.dart';
import 'package:covid19/screens/ui/statistics_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  final List<Widget> _children = [
    HomeScreen(),
    StatisticScreen(),
    NoteScreen(),
    InformationScreen()
  ];

  int position = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[position],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: ((int index) {
          setState(() {
            position = index;
          });
        }),
        currentIndex: position,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: SizedBox.shrink()),
          BottomNavigationBarItem(icon: Icon(Icons.assistant), title: SizedBox.shrink()),
          BottomNavigationBarItem(icon: Icon(Icons.library_add), title: SizedBox.shrink()),
          BottomNavigationBarItem(icon: Icon(Icons.info), title: SizedBox.shrink()),
        ],
      ),
    );
  }
}
