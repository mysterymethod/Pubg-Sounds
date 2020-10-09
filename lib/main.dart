import 'package:flutter/material.dart';
import 'screen1.dart';

void main() {
  runApp(Pubg());
}

class Pubg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF1D2136),
        ),
        home: Screen1());
  }
}

//
