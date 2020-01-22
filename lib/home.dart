import 'package:bankingapp/recent.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Header(),
              SizedBox(
                height: 30.0,
              ),
              Dashboard(),
              SizedBox(
                height: 10.0,
              ),
              RecentActivities(),
            ],
          ),
        ),
      ),
    );
  }
}
