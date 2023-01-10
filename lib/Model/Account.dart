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
          //  Backgound Image
          Image(image: const AssetImage('images/mainmoon.png'),
            fit: BoxFit.cover,height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,),

          // Heading Text
          Positioned(top: MediaQuery.of(context).size.height / 3.8,
              left: MediaQuery.of(context).size.width / 25,
              child: Column(
                children: const [
                  Text("TUtorial ",
                    style: TextStyle(fontSize: 30, color: Colors.white),),
                  SizedBox(height: 10,),
                  Text("Find tutorial from the best providers",
                    style: TextStyle(fontSize: 17, color: Colors.white),),
                ],
              )
          ),
        ],
      )
    );
  }
}
