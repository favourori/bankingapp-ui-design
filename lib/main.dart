import 'package:flutter/material.dart';
import './home.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void changeBarColor() async {
    await FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    if (useWhiteForeground(Colors.white)) {
      FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    } else {
      FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    changeBarColor();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
