import 'package:flutter/material.dart';

class RecentActivities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Recent Activity",
          style: TextStyle(fontSize: 17.0),
        )
      ],
    );
  }
}
