import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:tictac/pages/start.dart';
import 'package:tictac/services/provider.dart';

void main() {
  setupLocator();
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splashapp(),
  ));
}

class Splashapp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<Splashapp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 4,
      routeName: "/",
      navigateAfterSeconds: MyApp(),
      image: new Image.asset(
          'assets/loading.gif'),
      backgroundColor: Colors.black,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 200.0,
      onClick: () => print("Tic-Tac"),
      loaderColor: Colors.white54,
    );
  }
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}
