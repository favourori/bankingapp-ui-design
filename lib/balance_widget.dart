import 'package:flutter/material.dart';


class Balance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 140.0,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 26.0),
      decoration: BoxDecoration(
        color: Color(0xFF342780),
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "BALANCE",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w200),
              )
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "\$100,000.00",
                style: TextStyle(
                    fontSize: 26.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              FlatButton.icon(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                color: Color(0xFF231C4F),
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 15.0,
                ),
                label: Text(
                  "Topup",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
