import 'package:flutter/material.dart';
import 'package:learningmaterial/Model/HomePage.dart';
import 'package:learningmaterial/Model/MainScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/demo',
    routes: {
      '/demo': (context) => MainPage(),
      '/home' : (context) => HomePage(),
    },
  ));
}

