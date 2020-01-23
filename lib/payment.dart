import 'package:bankingapp/sliding_dash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFFF9F9FC),
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
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            RecentPayment(
              title: "Samuel Achem",
              iconText: "SA",
              trailingIconBackground: Color(0xFFFDF4F0),
              trailingIconColor: Color(0xFFF37A4E),
              trailingIcon: Icons.remove,
            ),
            RecentPayment(
              title: "Favour Ori",
              iconText: "FO",
              trailingIconBackground: Color(0xFFFDF4F0),
              trailingIconColor: Color(0xFFF37A4E),
              trailingIcon: Icons.remove,
            ),
          ],
        ),
      ),
    );
  }
}

class RecentPayment extends StatelessWidget {
  final title;
  final subtitle1;
  final subtitle2;
  final iconText;
  final trailingIconBackground;
  final trailingIcon;
  final trailingIconColor;
  RecentPayment(
      {this.title,
      this.subtitle1,
      this.subtitle2,
      this.iconText,
      this.trailingIcon,
      this.trailingIconBackground,
      this.trailingIconColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.2,
      child: Container(
        child: ListTile(
          title: Text(title),
          leading: CircleAvatar(
            child: Text(iconText),
            backgroundColor: Color(0xFFF5F5F7),
            foregroundColor: Colors.grey,
          ),
          subtitle: RichText(
            text: TextSpan(
              text: '\$2000.0 ',
              style: TextStyle(
                  fontSize: 13.0,
                  color: Color(0xFF12A10C),
                  fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: '. GTbank',
                    style: TextStyle(
                        fontWeight: FontWeight.w300, color: Colors.grey)),
              ],
            ),
          ),
          trailing: CircleAvatar(
            child: Icon(trailingIcon),
            backgroundColor: trailingIconBackground,
            foregroundColor: trailingIconColor,
          ),
        ),
      ),
    );
  }
}
