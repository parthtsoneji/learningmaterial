import 'package:flutter/material.dart';

class CoverPage extends StatefulWidget {
  const CoverPage({Key? key}) : super(key: key);
  @override
  State<CoverPage> createState() => _CoverPageState();
}
class _CoverPageState extends State<CoverPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cover Letter")),
      body: Container(
        height: 400,
        width: 200,
        color: Colors.blue,
      ),
      );
  }
}
