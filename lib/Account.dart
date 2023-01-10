import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Backgound Image
          Image(image: const AssetImage('images/mainmoon.png'),
            fit: BoxFit.cover,height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,),

          //Icon Person
          Positioned(
              left: MediaQuery.of(context).size.width / 1.28,
              top: MediaQuery.of(context).size.height /35,
              child: Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10.0,color: Colors.white),
                    ]),
                child: const Icon(Icons.person,size: 25,color: Colors.white,),
              )),
        ],
      )
    );
    }
}
