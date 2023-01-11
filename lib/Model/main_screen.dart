import 'package:flutter/material.dart';
import 'package:learningmaterial/Model/Account.dart';
import 'package:learningmaterial/Model/Cover.dart';
import 'package:learningmaterial/Model/formpage.dart';
import 'package:learningmaterial/Model/homePage.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  List<Widget> pageList = <Widget>[
    HomePage(),
    FormPage(),
    CoverPage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white70,
        unselectedItemColor:  Colors.black45,
        currentIndex: index,
                onTap: (value) {
          print(value);
          setState(() {
            index = value;
          });
        },

        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedIconTheme: IconThemeData(color: Colors.black45),
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
