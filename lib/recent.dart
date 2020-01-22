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
          height: 10.0,
        ),
        Transaction(
          title: "Samuel Achem",
          subtitle: "Airtime",
          color: Color(0xFF00B55B),
          date: "Jan 23, 2020",
          icon: Icons.receipt,
          amount: "\$1000.00",
        ),
        Transaction(
          title: "Bank transfer",
          subtitle: "To self",
          color: Colors.red,
          date: "Jan 21, 2020",
          icon: Icons.remove,
          amount: "\$3000.00",
        ),
      ],
    );
  }
}

class Transaction extends StatelessWidget {
  final title;
  final subtitle;
  final amount;
  final date;
  final icon;
  final color;
  Transaction(
      {this.title,
      this.subtitle,
      this.amount,
      this.date,
      this.icon,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 3.0),
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: CircleAvatar(
            backgroundColor: Color(0xFFEDF8ED),
            child: Icon(
              icon,
              color: Color(0xFF00B55B),
            ),
            radius: 30.0,
          ),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Text(
                amount,
                style: TextStyle(
                  color: color,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                date,
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
