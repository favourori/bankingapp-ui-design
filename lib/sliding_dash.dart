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
      height: 180.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ActionsSlider(
            bgcolor: Color(0xFFD0F2F1),
            title: "Send",
            subtitle: "Money",
            image: "images/money.png",
            iconColor: Color(0xFF8DE6E0),
          ),
          SizedBox(
            width: 16.0,
          ),
          ActionsSlider(
            bgcolor: Color(0xFFE4DCF5),
            title: "Bill",
            subtitle: "Payment",
            image: "images/pay.png",
            iconColor: Color(0xFFC0ABEB),
          ),
          SizedBox(
            width: 16.0,
          ),
          ActionsSlider(
            bgcolor: Color(0xFFF8EDCA),
            title: "Data &",
            subtitle: "Airtime",
            image: "images/transfer.png",
            iconColor: Color(0xFFF6D979),
          ),
          // SizedBox(
          //   width: 30.0,
          // ),
        ],
      ),
    );
  }
}

class ActionsSlider extends StatelessWidget {
  final title;
  final subtitle;
  final bgcolor;
  final iconColor;
  final image;

  ActionsSlider(
      {this.title, this.subtitle, this.bgcolor, this.iconColor, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      padding: EdgeInsets.only(left: 22.0, top: 20.0, bottom: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
        color: bgcolor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            child: Image.asset(
              image,
              width: 37.0,
            ),
            backgroundColor: iconColor,
            radius: 33.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
          ),
          Text(
            subtitle,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
          )
        ],
      ),
    );
  }
}
