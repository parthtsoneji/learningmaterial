import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
          Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/mainmoon.png'),),),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 285 , 40, 0),
                  child: TextField(
                      decoration: InputDecoration(prefixIcon: const Icon(Icons.search),
                          filled: true,fillColor: Colors.white,hintText: "Search",
                          border: OutlineInputBorder(borderSide: const BorderSide(width: 3,color: Colors.black),borderRadius: BorderRadius.circular(30),))
                  ),
                ),
          ),
    );
  }
}