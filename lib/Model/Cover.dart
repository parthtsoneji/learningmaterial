import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

class CoverPage extends StatefulWidget {
  const CoverPage({Key? key}) : super(key: key);
  @override
  State<CoverPage> createState() => _CoverPageState();
}
class _CoverPageState extends State<CoverPage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Icon(Icons.add_alarm),
            Icon(Icons.ac_unit_sharp),
            Icon(Icons.add_circle)
          ]),
          title: const Text("Cover Page"),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.add_alarm),
            Icon(Icons.ac_unit_sharp),
            Icon(Icons.add_circle)
          ],
        )
      ),
    );
  }
}
