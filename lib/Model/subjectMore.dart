import 'package:flutter/material.dart';

class subjectPage extends StatefulWidget {
  const subjectPage({Key? key}) : super(key: key);

  @override
  State<subjectPage> createState() => _subjectPageState();
}

class _subjectPageState extends State<subjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
          Stack(
            children:[ Align(
              alignment: Alignment.topLeft,
              child:
              Icon(Icons.arrow_back,color: Colors.white,size: 20),
            ),

          Align(
            alignment: Alignment.topRight,
            child:  Icon(Icons.share,color: Colors.white,size: 20),
          )])
      ),
    );
  }
}
