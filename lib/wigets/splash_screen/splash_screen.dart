import 'dart:async';

import 'package:flutter/material.dart';
import '../app_bar.dart';
import 'second_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SecondScreen()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      appBar: appBarMedical2(),
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 60,
              height: 60,
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 6,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30.0)),
            Text(
              "Связываемся с банком",
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF939396),
                  fontFamily: "Caption",
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
