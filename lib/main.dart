import 'package:flutter/material.dart';
import 'package:mdaffailhami/constants.dart';
import 'package:mdaffailhami/screens/home/home.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MDI',
      theme: ThemeData(
          scaffoldBackgroundColor: Constants.color1,
          textTheme: TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
          ).apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          )),
      home: const HomeScreen(),
    );
  }
}
