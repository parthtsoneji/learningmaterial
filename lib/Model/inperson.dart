import 'package:flutter/material.dart';

class InPersonPage extends StatefulWidget {
  const InPersonPage({Key? key}) : super(key: key);

  @override
  State<InPersonPage> createState() => _InPersonPageState();
}

class _InPersonPageState extends State<InPersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Icon(Icons.add_alarm),
          Icon(Icons.ac_unit_sharp),
          Icon(Icons.add_circle)
        ],
      ),
    );
  }
}
