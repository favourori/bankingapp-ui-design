import 'package:flutter/material.dart';

import 'balance_widget.dart';
import 'invest.dart';
import 'loan_widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Balance(),
        SizedBox(
          height: 30.0,
        ),
        Loan(),
        SizedBox(
          height: 30.0,
        ),
        Invest()
      ],
    );
  }
}
