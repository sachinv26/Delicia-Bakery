import 'package:flutter/material.dart';
import 'dart:async';
import 'landing_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => MyHomePage(title: '',))));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Text(
            'Delicia Bakers🎂',
            style: TextStyle(
              fontSize: 40.0,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
