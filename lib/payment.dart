import 'package:bankingapp/sliding_dash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: <Widget>[
          Text("Hello"),
          Flexible(
            child: SlidingDash(),
          )
        ],
      ),
    );
  }
}
