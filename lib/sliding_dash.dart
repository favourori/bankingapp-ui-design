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
        //shrinkWrap: true,

        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ActionsSlider(),
          SizedBox(
            width: 20.0,
          ),
          ActionsSlider(),
          SizedBox(
            width: 20.0,
          ),
          ActionsSlider(),
          SizedBox(
            width: 30.0,
          ),
        ],
      ),
    );
  }
}

class ActionsSlider extends StatelessWidget {
  const ActionsSlider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      padding: EdgeInsets.only(left: 22.0, top: 20.0, bottom: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
        color: Color(0xFFD0F2F1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            child: Image.asset(
              'images/money.png',
              width: 37.0,
            ),
            backgroundColor: Color(0xFF8DE6E0),
            radius: 33.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Send",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
          ),
          Text(
            "Money",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
          )
        ],
      ),
    );
  }
}
