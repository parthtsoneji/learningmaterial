import 'package:flutter/material.dart';
import 'package:learningmaterial/Account.dart';
import 'package:learningmaterial/Cover.dart';
import 'package:learningmaterial/formpage.dart';
import 'package:learningmaterial/homePage.dart';

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
        unselectedItemColor:  Colors.white,
        currentIndex: index,
                onTap: (value) {
          print(value);
          setState(() {
            index = value;
          });
        },

        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance,color: Colors.black45,),
              label: "Lessons"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_chart_outlined,color: Colors.black45,),
              label: "PLatform"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_rounded,color: Colors.black45,),
              label: "Cover"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp,color: Colors.black45),
              label: "Account"),
        ],
      ),
    );
  }
}
