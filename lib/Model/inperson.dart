import 'package:flutter/material.dart';
import 'package:learningmaterial/Model/main_screen.dart';

class InPersonPage extends StatefulWidget {
  const InPersonPage({Key? key}) : super(key: key);
  static Person? dataList;

  @override
  State<InPersonPage> createState() => _InPersonPageState();
}

class _InPersonPageState extends State<InPersonPage> {

  // In Person data
  List<Person> inper = [
    Person(
        image: 'images/thumb.png',
        name: "Benjamin",
        desc:
            'Lorem Lpsum is simply dummy text of the printing and typesetting industry.',
        num: 'Class 1 - 13',
        icons: Icons.sort_by_alpha),
    Person(
        image: 'images/melo.png',
        name: "Sebastian",
        desc:
            'Lorem Lpsum has been the industries standard dummy text ever sub the and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Lpsum 1500s, when an unknown printer took a galley of the variiable is fpound in a scropion formate list of vacncy is the largest economy to democrate that the formate for all ther aspect in a ration for all the leave of the concert the value of the senter of a depend the rotation in bgmi formatye there specify the object of knowlege formate in a particular formate that iun a ways that form apply',
        num: 'Class 1 - 13',
        icons: Icons.add_circle)
  ];



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Stack(
      children: [
        // ListView Builder
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: SizedBox(
            height: 500,
            child: ListView.builder(
              itemCount: inper.length,
              itemBuilder: (context,index) {
                InPersonPage.dataList  = inper[index];

                //return to Account Page
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      MainPage.controller.add(true);
                    });
                    // Navigator.push(context,
                    //     MaterialPageRoute(
                    //       builder:  (context) => DetailPage(data: data)));
                  },
                  // Listview Design
                  child: Card(
                    margin: const EdgeInsets.only(bottom: 15),
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),side: BorderSide(color: Colors.black.withOpacity(0.4))),

                    //Row for image and column text
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //circle Avtar image
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 15),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    inper[index].image,
                                  ),
                                  radius: 25,
                                ),
                              ),
                              const SizedBox(width: 30),

                              //Headline Name
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      inper[index].name,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),

                                    // Check icon & Descriptions
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Icon(Icons.check_circle_outline,
                                            color: Colors.black, size: 18),
                                        const SizedBox(width: 3),
                                        SizedBox(
                                            width: 170,
                                            child: Text(inper[index].desc,
                                                style: const TextStyle(
                                                    color: Colors.black45,
                                                    fontSize: 15),
                                                maxLines: 7,textAlign: TextAlign.justify,
                                                overflow: TextOverflow.ellipsis))
                                      ],
                                    ),

                                    // Number class
                                    Text(
                                      inper[index].num,
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),

                          // Icon Cross
                          Padding(
                            padding: const EdgeInsets.only(top: 15, right: 10),
                            child: Icon(
                              inper[index].icons,
                              color: Colors.grey,
                              size: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    ));
  }
}

// model
class Person {
  String image;
  String name;
  String desc;
  String num;
  IconData icons;

  Person(
      {required this.image,
      required this.name,
      required this.desc,
      required this.num,
      required this.icons});
}
