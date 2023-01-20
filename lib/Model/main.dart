import 'package:flutter/material.dart';
import 'package:learningmaterial/Model/detailPlatform.dart';
import 'package:learningmaterial/Model/homePage.dart';
import 'package:learningmaterial/Model/mainScreen.dart';

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

