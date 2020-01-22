import 'package:flutter/material.dart';

class Loan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 140.0,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 26.0),
      decoration: BoxDecoration(
        color: Color(0xFFCBEEEA),
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Apply for a Loan",
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
                    text: 'Recieve funds in your account ',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(text: 'in as little as 5 minutes')
                    ],
                  ),
                ),
              ),
              Opacity(
                opacity: 0.75,
                child: Image.asset(
                  'images/venture.png',
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
