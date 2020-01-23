import 'package:bankingapp/home_screen.dart';
import 'package:bankingapp/payment.dart';
import 'package:bankingapp/recent.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'header.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final List<Widget> children = [
    HomePage(),
    Payment(),
    Payment(),
    Payment(),
    Payment(),
  ];

  void onTappedBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            title: Text("Payments"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_open),
            title: Text("Plan"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            title: Text("Activity"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
