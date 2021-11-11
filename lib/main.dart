import 'package:flutter/material.dart';
import 'package:mdaffailhami/constants.dart';
import 'package:mdaffailhami/screens/home.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MDI',
      theme: ThemeData(scaffoldBackgroundColor: Constants.color1),
      home: HomeScreen(),
    );
  }
}
