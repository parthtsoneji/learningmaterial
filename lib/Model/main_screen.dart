import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learningmaterial/Model/Account.dart';
import 'package:learningmaterial/Model/Cover.dart';
import 'package:learningmaterial/Model/detail_screen.dart';
import 'package:learningmaterial/Model/formpage.dart';
import 'package:learningmaterial/Model/homePage.dart';
import 'package:learningmaterial/Model/inperson.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static StreamController<bool> controller = StreamController<bool>.broadcast();

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  bool temp = false;

  // bool value false to true
  @override
  void didUpdateWidget(covariant MainPage oldWidget) {
    MainPage.controller.stream.listen((event) {
      setState(() {
        temp = event;
      });
    });
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    // list bottom Navigation to change page
    final List<Widget> pageList = <Widget>[
      const HomePage(),
      const FormPage(),
      const CoverPage(),
      temp ? DetailPage(data: InPersonPage.dataList!) : const AccountPage()
    ];
    return Scaffold(
          body: pageList[index],

          // Bottomnavigation
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white70,
            unselectedItemColor:  Colors.black45,
            currentIndex: index,
                    onTap: (value) {
                setState(() {
                index = value;
              });
            },

            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
            unselectedIconTheme: const IconThemeData(color: Colors.black45),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance),
                  label: "Lessons"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_chart_outlined),
                  label: "PLatform"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance_wallet_rounded),
                  label: "Cover"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_sharp),
                  label: "Account"),
            ],
          ),
    );
  }
}