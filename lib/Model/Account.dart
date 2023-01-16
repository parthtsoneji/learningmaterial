import 'package:flutter/material.dart';
import 'package:learningmaterial/Model/inperson.dart';
import 'package:learningmaterial/Model/onlineperson.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}
class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                // Background image
                Image(image: const AssetImage('images/mainmoon.png'),
                    fit: BoxFit.cover,height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width),

                // Heading Text
                Positioned(
                    top: MediaQuery.of(context).size.height / 3.8,
                    left: MediaQuery.of(context).size.width / 25,
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Tutorial",style: TextStyle(fontSize: 30,color: Colors.white),),
                        SizedBox(height: 2),
                        Text("Find tutorial from the best Providers",style: TextStyle(fontSize: 18,color: Colors.white),),
                      ],
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: TabBar(
                    labelColor: Colors.blue,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.video_camera_front_rounded,size: 20),
                              SizedBox(width: 3),
                              Text("online",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.person,size: 20),
                              SizedBox(width: 3),
                              Text("Person",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ]),
                ),
                SizedBox(width: MediaQuery.of(context).size.width /2.7),
                Row(
                  children: const [
                    Icon(Icons.filter_alt_rounded,color: Colors.grey,size: 25)
                  ],
                )
              ],
            ),
            const Expanded(child: TabBarView(children: [
              OnlinePage(),
              InPersonPage(),
            ]))
          ],
        ),
      ),
    );
  }
}

class Items {

  String text;
  IconData icon;

  Items({required this.text,required this.icon});
}
