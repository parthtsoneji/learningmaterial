import 'package:flutter/material.dart';

class OnlinePage extends StatefulWidget {
  const OnlinePage({Key? key}) : super(key: key);

  @override
  State<OnlinePage> createState() => _OnlinePageState();
}

class _OnlinePageState extends State<OnlinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Icon(Icons.add_alarm),
        Icon(Icons.ac_unit_sharp),
        Icon(Icons.add_circle)
      ],)
    );
  }
}
