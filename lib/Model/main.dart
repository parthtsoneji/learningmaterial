import 'package:flutter/material.dart';
import 'package:learningmaterial/Model/homePage.dart';
import 'package:learningmaterial/Model/main_screen.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => MainPage(),
      '/home' : (context) => HomePage(),
    },
  ));
}

