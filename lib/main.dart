import 'package:flutter/material.dart';
import 'package:learningmaterial/formpage.dart';
import 'package:learningmaterial/homePage.dart';
import 'package:learningmaterial/main_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => MainPage(),
      '/home' : (context) => HomePage()},
  ));
}

