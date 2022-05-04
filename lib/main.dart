import 'package:flutter/material.dart';
import 'package:quiz_vip_flutter/screens/home_screen.dart';
import 'package:quiz_vip_flutter/screens/quiz_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'dana'),
      home: HomePage(),
      routes: {
        QuizPage.routeName : ((context) => QuizPage())
      },
    ),
  );
}
