import 'package:flutter/material.dart';
import 'package:learningmaterial/Model/HomePage.dart';
import 'package:learningmaterial/Model/MainScreen.dart';
import 'package:learningmaterial/Model/SignIn.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/demo',
    routes: {
      '/demo': (context) => LoginCheck(),
    },
  ));
}
class LoginCheck extends StatefulWidget {
  const LoginCheck({Key? key}) : super(key: key);

  @override
  State<LoginCheck> createState() => LoginCheckState();
}

class LoginCheckState extends State<LoginCheck> {
  @override
  void initState() {
    super.initState();
    WhereToGo();
  }
  static const String KEYLOGIN = "Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold();

  }
  void WhereToGo() async{
    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPref.getBool(KEYLOGIN);
      if(isLoggedIn != null){
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const MainPage(),));
      }
      else{
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const SignIn(),));
      }
  }
}



