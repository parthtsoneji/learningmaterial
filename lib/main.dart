import 'package:flutter/material.dart';
import 'package:learningmaterial/Model/MainScreen.dart';
import 'package:learningmaterial/Model/SignIn.dart';
import 'package:shared_preferences/shared_preferences.dart';

  void main(){
    runApp( MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginCheck(),
      );
    }
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
    return Scaffold(
      body: Container(
      color: Colors.transparent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
    );
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



