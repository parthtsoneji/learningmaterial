import 'dart:async';
import 'package:flutter/material.dart';
import 'package:learningmaterial/Model/accountPage.dart';
import 'package:learningmaterial/Model/coverPage.dart';
import 'package:learningmaterial/Model/detailPlatform.dart';
import 'package:learningmaterial/Model/detailScreen.dart';
import 'package:learningmaterial/Model/formPage.dart';
import 'package:learningmaterial/Model/homePage.dart';
import 'package:learningmaterial/Model/personPage.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static StreamController<bool> controller = StreamController<bool>.broadcast();
  static StreamController<bool> formController = StreamController<bool>.broadcast();

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  bool temp = false;
  bool demo = false;



  // bool value false to true
  @override
  void didUpdateWidget(covariant MainPage oldWidget) {
    MainPage.controller.stream.listen((event) {
      setState(() {
        temp = event;

      });
    });
    MainPage.formController.stream.listen((eventt) {
      setState(() {
        demo = eventt;
      });
    });
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    // list bottom Navigation to change page
    final List<Widget> pageList = <Widget>[
      const HomePage(),
      demo ? platformPage(main: FormPage.listwork!) : const FormPage(),
      const CoverPage(),
      temp ? DetailPage(data: InPersonPage.dataList!) : const AccountPage()
    ];
    return Scaffold(
          body: pageList[index],

          // Bottomnavigation
          bottomNavigationBar: SizedBox(
            height: 65,
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
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
          ),
    );
  }
}