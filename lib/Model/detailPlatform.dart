import 'package:flutter/material.dart';
import 'package:learningmaterial/Model/mainScreen.dart';

import 'formPage.dart';

// ignore: camel_case_types
class platformPage extends StatefulWidget {
  const platformPage({Key? key, required this.main}) : super(key: key);
  final Test main;

  @override
  State<platformPage> createState() => _platformPageState();
}

// ignore: camel_case_types
class _platformPageState extends State<platformPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Image(
            image: const AssetImage('images/books.png'),
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 30,
                right: MediaQuery.of(context).size.width / 30,
                top: MediaQuery.of(context).size.height / 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      MainPage.formController!.add(false);
                    },
                    child: const Icon(Icons.arrow_back,
                        color: Colors.white, size: 25)),
                const Icon(Icons.share, color: Colors.white, size: 25)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 20,
                top: MediaQuery.of(context).size.height / 6.5),
            child: Column(
              children: [
                SizedBox(
                  height: 52,
                  width: 52,
                  child: Image.asset(
                    widget.main.image,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    widget.main.tegline,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    height: 25,
                    width: 50,
                    decoration: BoxDecoration(
                        color: (widget.main.payment == "FREE")
                            ? Colors.blue
                            : Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Center(
                      child: Text(
                        widget.main.payment,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 13.5),
                      ),
                    ),
                  ),
                ),
            ElevatedButton(onPressed: () {
              showModalBottomSheet(context: context, builder: (context) =>
              const Center(child: Text("Hello",style: TextStyle(fontSize: 35),),),);
            }, child: const Text("Hello")),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
