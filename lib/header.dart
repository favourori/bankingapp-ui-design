import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        new Container(
          width: 70.0,
          height: 70.0,
          decoration: new BoxDecoration(
            color: Colors.grey,
            image: new DecorationImage(
              image: new AssetImage('images/favourmain.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
            border: new Border.all(
              color: Colors.grey[200],
              width: 4.0,
            ),
          ),
        ),
        SizedBox(
          width: 14.0,
        ),
        Text(
          "Hello, Favour",
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
