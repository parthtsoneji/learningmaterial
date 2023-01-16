import 'dart:html';

import 'package:flutter/material.dart';

class OnlinePage extends StatefulWidget {
  const OnlinePage({Key? key}) : super(key: key);

  @override
  State<OnlinePage> createState() => _OnlinePageState();
}

class _OnlinePageState extends State<OnlinePage> {

  List<Account> acc = [
    Account(
        person: 'images/images.png',
        name: "Lissane",
        desc: "Student",
        num: "Class 1 - 13",
        icons: Icons.sort_by_alpha),
    Account(
        person: 'images/thumb.png',
        name: "Lorem lpsum",
        desc: "Coroline",
        num: "Class 1 - 13",
        icons: Icons.ac_unit_sharp),
    Account(
        person: "images/melo.png",
        name: "Julia",
        desc: "There are many variations",
        num: "Class 1 - 13",
        icons: Icons.energy_savings_leaf),
    Account(
        person: "images/person.png",
        name: "fmila",
        desc: "Forogline",
        num: "Class 1 - 13",
        icons: Icons.energy_savings_leaf_rounded)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: SizedBox(
              height: 400,

              // Listview
              child: ListView.builder(
                itemCount: acc.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.only(bottom: 15),
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),side: BorderSide(color: Colors.black.withOpacity(0.4))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15,top: 15),
                                  child: CircleAvatar(backgroundImage: AssetImage(acc[index].person),radius: 25,),
                                ),
                                const SizedBox(width: 30),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(acc[index].name,style: const TextStyle(
                                      fontSize: 18,fontWeight: FontWeight.bold,
                                      color: Colors.black),),
                                      const SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Icon(Icons.check_circle_outline,color: Colors.black,size: 18),
                                          const SizedBox(width: 5),
                                          SizedBox(
                                              width: 150,
                                              child: Text(acc[index].desc,style: const TextStyle(color: Colors.black45,fontSize: 15),overflow: TextOverflow.fade,))
                                        ],
                                      ),
                                      Text(acc[index].num,style: const TextStyle(color: Colors.black,fontSize: 16),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15,right: 10),
                              child: Icon(acc[index].icons,color: Colors.grey,size: 18,),
                            )
                          ],
                        ),
                      ),
                    );
                  },
              ),
            ),
          )
        ],
      )
    );
  }
}

class Account {
  String person;
  String name;
  String desc;
  String num;
  IconData icons;
  Account({required this.person,required this.name,required this.desc,required this.num,required this.icons});
}
