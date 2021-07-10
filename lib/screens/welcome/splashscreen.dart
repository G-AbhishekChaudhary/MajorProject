import 'package:flutter/material.dart';
import 'package:majorproject/screens/welcome/welcome.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.white,
      seconds: 6,
      navigateAfterSeconds: new Welcome(),
      title: new Text(
        "E-Learning App",
        style: TextStyle(
          color: Colors.blue,
          fontFamily: 'Roboto',
          fontSize: 40,
        ),
      ),
      image: new Image.asset("images/splash.jpg"),
      loadingText: Text(
        "Loading",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontFamily: 'Roboto',
        ),
      ),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}
