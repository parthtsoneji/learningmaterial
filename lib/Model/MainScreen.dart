import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learningmaterial/Model/AccountPage.dart';
import 'package:learningmaterial/Model/CoverPage.dart';
import 'package:learningmaterial/Model/FormPage.dart';
import 'package:learningmaterial/Model/HomePage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static StreamController<bool> controller = StreamController<bool>.broadcast();

  @override
  State<MainPage> createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  bool temp = false;

  // bool value false to true
  @override
  void didUpdateWidget(covariant MainPage newWidget) {
    MainPage.controller.stream.listen((event) {
      setState(() {
        temp = event;
      });
    });
    super.didUpdateWidget(newWidget);
  }

  @override
  Widget build(BuildContext context) {
      return CupertinoTabScaffold(
        resizeToAvoidBottomInset: false,
        tabBar: CupertinoTabBar(items: const [
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
        ]),
        tabBuilder: (BuildContext context, int index) {
              switch (index) {
                case 0:
                  return CupertinoTabView(builder: (context) {
                    return CupertinoPageScaffold(child: HomePage(),);
                  });
                case 1:
                  return CupertinoTabView(builder: (context) {
                    return CupertinoPageScaffold(child: FormPage(),);
                  });
                case 2:
                  return CupertinoTabView(builder: (context) {
                    return CupertinoPageScaffold(child: CoverPage(),);
                  });
                case 3:
                  return CupertinoTabView(builder: (context) {
                    return CupertinoPageScaffold(child: AccountPage(),);
                  },);
                default:
                  return CupertinoTabView(builder: (context) {
                    return CupertinoPageScaffold(child: HomePage());
                  });
              }
            },
      );
  }
}