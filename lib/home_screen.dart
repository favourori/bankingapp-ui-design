import 'package:bankingapp/recent.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 30.0,
          ),
          RecentActivities(),
        ],
      ),
    );
  }
}
