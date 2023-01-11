import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:learningmaterial/Model/inperson.dart';
import 'package:learningmaterial/Model/onlineperson.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}
class _AccountPageState extends State<AccountPage> {

  List<Items> list = [
    Items(text: "online", icon: Icons.video_camera_front_rounded),
    Items(text: "In Person", icon: Icons.person)];
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
              children: [
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                        width: 150,
                        child: ListView.builder(itemCount: list.length,itemBuilder: (context, index) {
                          return Container(
                            height: 60,
                            width: 150,
                            margin: EdgeInsets.all(2),
                            child: Center(child: Text(Items[index].list),),
                          );
                        },),
                      )
                    ],
                  ),
                ),





            //
            //     Padding(
            //       padding: const EdgeInsets.only(top: 40,right: 15,left: 15),
            //       child: SizedBox(
            //         height: 80,
            //         child: Column(
            //           children: [
            //             TabBar(tabs: [
            //               Row(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: const [
            //                   Icon(Icons.video_camera_front_rounded,size: 20,color: Colors.grey,),
            //                   SizedBox(width: 3,),
            //                   Text("online",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold),)
            //                 ],
            //               ),
            //               Row(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: const [
            //                   Icon(Icons.person,size: 20,color: Colors.grey,),
            //                   SizedBox(width: 3),
            //                   Text("In Person",style: TextStyle(fontSize: 15,color: Colors.grey),)
            //                 ],
            //               ),
            //             ]),
            //             const TabBarView(children: [
            //               Icon(Icons.add_alarm),
            //               Icon(Icons.ac_unit_sharp),
            //               Icon(Icons.add_circle)
            //             ])
            //           ],
            //         ),
            //       ),
            //     )
            //   ],
            // )
            // Background image
            // Image(image: const AssetImage('images/mainmoon.png'),
            //   fit: BoxFit.cover,height: MediaQuery.of(context).size.height / 2.5,
            //   width: MediaQuery.of(context).size.width),
            //
            // // Heading Text
            // Positioned(
            //     top: MediaQuery.of(context).size.height / 3.8,
            //     left: MediaQuery.of(context).size.width / 25,
            //     child:
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: const [
            //         Text("Tutorial",style: TextStyle(fontSize: 30,color: Colors.white),),
            //         SizedBox(height: 2),
            //         Text("Find tutorial from the best Providers",style: TextStyle(fontSize: 18,color: Colors.white),),
            //       ],
            //     )),
              ])
      ),
    );
  }
}

class Items {

  String text;
  IconData icon;

  Items({required this.text,required this.icon});
}
