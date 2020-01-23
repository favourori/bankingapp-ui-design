import 'package:flutter/material.dart';

class SlidingDash extends StatefulWidget {
  @override
  _SlidingDashState createState() => _SlidingDashState();
}

class _SlidingDashState extends State<SlidingDash> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 225.0,
      child: ListView(
        //shrinkWrap: true,

        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            height: 80.0,
            width: 300.0,
            color: Colors.blue,
            child: Column(
              children: <Widget>[Text("Hello")],
            ),
          ),
          SizedBox(
            width: 30.0,
          ),
          Container(
            height: 80.0,
            width: 300.0,
            color: Colors.blue,
            child: Column(
              children: <Widget>[Text("Hello")],
            ),
          ),
        ],
      ),
    );
  }
}
