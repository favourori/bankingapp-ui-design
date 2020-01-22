import 'package:flutter/material.dart';

class Invest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 140.0,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 26.0),
      decoration: BoxDecoration(
        color: Color(0xFFDBD4F2),
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Invest with Payvest",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
              )
            ],
          ),
          SizedBox(
            height: 0.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: RichText(
                  softWrap: true,
                  text: TextSpan(
                    text: 'Earn the highest interest rate by ',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(text: 'investing in a fixed plan')
                    ],
                  ),
                ),
              ),
              Opacity(
                opacity: 1,
                child: Image.asset(
                  'images/interest.png',
                  height: 65.0,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
