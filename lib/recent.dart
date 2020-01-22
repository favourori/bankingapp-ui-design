import 'package:flutter/material.dart';

class RecentActivities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Recent Activity",
          style: TextStyle(fontSize: 17.0),
        ),
        SizedBox(
          height: 30.0,
        ),
        Transaction()
      ],
    );
  }
}

class Transaction extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: CircleAvatar(
            backgroundColor: Color(0xFFEDF8ED),
            child: Icon(
              Icons.receipt,
              color: Color(0xFF00B55B),
            ),
            radius: 30.0,
          ),
          title: Text("Samuel Achem"),
          subtitle: Text("Softcom Airtime"),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Text(
                "\$1000",
                style: TextStyle(
                  color: Color(0xFF00B55B),
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "Jan 22, 2020",
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
