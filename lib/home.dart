import 'package:bankingapp/recent.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'header.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Header(),
            SizedBox(
              height: 20.0,
            ),
            Dashboard(),
            SizedBox(
              height: 40.0,
            ),
            RecentActivities(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
