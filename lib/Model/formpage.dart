import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    List<Test> list = [
      Test(tegline: "Anton",
          image: "images/anton.png",
          rating: "4.5",
          payment: "FREE",
          decr: "Lorem Lpsum is simply dummy text of te printing and typsetting industry. lorem lpsum has been the industrys standard dummy text ever since the 1500s"),
      Test(tegline: "BetterMarks",
          image: "images/symball.png",
          rating: "1.5",
          payment: "PAID",
          decr: "Lorem Lpsum is simply dummy text of te printing and typsetting industry. lorem lpsum has been the industrys standard dummy text ever since the 1500s"),
      Test(tegline: "Testomony",
          image: "images/symball.png",
          rating: "3.5",
          payment: "PAID",
          decr: "Lorem Lpsum is simply dummy text of te printing and typsetting industry. lorem lpsum has been the industrys standard dummy text ever since the 1500s"),
      Test(tegline: "Exaclwork",
          image: "images/symball.png",
          rating: "2.5",
          payment: "FREE",
          decr: "Lorem Lpsum is simply dummy text of te printing and typsetting industry. lorem lpsum has been the industrys standard dummy text ever since the 1500s")];
    return Scaffold(
        body: Stack(
            children: [
              //Backgound Image
              Image(image: const AssetImage('images/mainmoon.png'),
                fit: BoxFit.cover, height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,),

              //Icon Person
              Positioned(
                  left: MediaQuery.of(context).size.width / 1.28,
                  top: MediaQuery.of(context).size.height / 35,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10.0, color: Colors.white),
                          ]),
                    child: const Icon(
                      Icons.person, size: 25, color: Colors.white),
                  )),

              // Headline Text
              Positioned(top: MediaQuery.of(context).size.height / 4,
                  left: MediaQuery.of(context).size.width / 25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Position Material",
                        style: TextStyle(fontSize: 32, color: Colors.white),),
                      SizedBox(height: 2),
                      Text("Search for Position Material",
                        style: TextStyle(fontSize: 20, color: Colors.white),),
                      ],
                    )),

              //Listview
              Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.8,right: 20,left: 20),
                  child: SizedBox(
                    height: 500,
                    child: ListView.builder(itemCount: list.length,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.white,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  // text and image
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, left: 10, right: 13),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          list[index].tegline,
                                          style: const TextStyle(
                                              fontSize: 20,fontWeight: FontWeight.bold,
                                              color: Colors.black87),),
                                        Image.asset(
                                          list[index].image,
                                          height: 50,
                                          width: 50,)],
                                    ),
                                  ),

                                  // Rating bar
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.5, top: 2),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 3,minRating: 1,
                                          itemSize: 12,direction: Axis.horizontal,
                                          allowHalfRating: true,itemCount: 5,
                                          itemPadding:
                                          const EdgeInsets.symmetric(horizontal: 2.0),
                                          itemBuilder: (context, index) => const
                                          Icon(
                                            Icons.star,color: Colors.yellow,),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                        ),
                                        Text(
                                          list[index].rating,
                                          style: const TextStyle(
                                              fontSize: 15, color: Colors.black),)
                                      ],
                                    ),
                                  ),

                                  //  Condition payment option color
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, top: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: (list[index].payment == "FREE") ? Colors.blue : Colors.deepPurpleAccent ,
                                              borderRadius: BorderRadius.circular(8.0)),
                                          child: Center(
                                            child: Text(
                                              list[index].payment,
                                              style: const TextStyle(color: Colors.white,fontSize: 15),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // description
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,left: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            width: 300,
                                            child: Text(list[index].decr,style: const TextStyle(color: Colors.black,fontSize: 10),maxLines: 5)),
                                      ],
                                    ),)
                                ]),
                          );
                    }),
                  )
              ),
            ]
        )
    );
  }
}

class Test {
  Test(
      {required this.tegline, required this.image, required this.rating, required this.payment, required this.decr});
  String tegline;
  String image;
  String rating;
  String payment;
  String decr;
}

