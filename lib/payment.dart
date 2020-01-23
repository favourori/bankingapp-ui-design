import 'package:bankingapp/sliding_dash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Text(
              "Payments",
              style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40.0,
            ),
            SlidingDash(),
            SizedBox(
              height: 40.0,
            ),
            Text(
              "Saved Payments",
              style: TextStyle(fontSize: 18.0),
            )
          ],
        ),
      ),
    );
  }
}
