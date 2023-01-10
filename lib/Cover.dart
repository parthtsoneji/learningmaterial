import 'package:flutter/material.dart';
import 'package:learningmaterial/homePage.dart';

class CoverPage extends StatefulWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  State<CoverPage> createState() => _CoverPageState();
}

class _CoverPageState extends State<CoverPage> {
  final person  = List<String>.generate(50, (i) => 'index $i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cover Page"),
      ),

      body: ListView.separated(itemBuilder: (context, index) => Card(
        color: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text(person[index]),
        ),
      ), separatorBuilder: (context, index) => Divider(),  itemCount: 30),
      // ListView.builder(itemCount: person.length,itemBuilder: (context, index) =>  ListTile(
      //   leading: Icon(Icons.add_chart),
      //   trailing: Icon(Icons.bluetooth_connected_sharp),
      //   title: Text(person[index]),
      // ),
        // padding: EdgeInsets.all(20.0),
        // physics: NeverScrollableScrollPhysics(),
        //   reverse: false,
        //   scrollDirection: Axis.vertical,
        //   children:  ListTile.divideTiles(
        //     context: context, tiles: [
        //       ListTile(
        //         onTap: () {
        //         },
        //         title: const Text('Demo'),
        //         subtitle: const Text("Demopange"),
        //         leading: const Icon(Icons.person),
        //         trailing: const Icon(Icons.add),
        //         focusColor: Colors.pink,
        //         tileColor: Colors.pink,
        //       ),
        //       ListTile(
        //         onTap: () => const HomePage(),
        //         title: const Text('Maya'),
        //         subtitle: const Text("Mayapuri"),
        //         leading: const Icon(Icons.person),
        //         trailing: const Icon(Icons.add),),
        //       const ListTile(
        //         title: Text('Hello'),
        //         subtitle: Text("HelloPage"),
        //         leading: Icon(Icons.person),
        //         trailing: Icon(Icons.add),
        //       ),
        //     ListTile(
        //       onTap: () {
        //       },
        //       title: const Text('Demo'),
        //       subtitle: const Text("Demopange"),
        //       leading: const Icon(Icons.person),
        //       trailing: const Icon(Icons.add),
        //       focusColor: Colors.pink,
        //       tileColor: Colors.pink,
        //     ),
        //     ListTile(
        //       onTap: () => const HomePage(),
        //       title: const Text('Maya'),
        //       subtitle: const Text("Mayapuri"),
        //       leading: const Icon(Icons.person),
        //       trailing: const Icon(Icons.add),),
        //     const ListTile(
        //       title: Text('Hello'),
        //       subtitle: Text("HelloPage"),
        //       leading: Icon(Icons.person),
        //       trailing: Icon(Icons.add),
        //     ),
        //     ListTile(
        //       onTap: () {
        //       },
        //       title: const Text('Demo'),
        //       subtitle: const Text("Demopange"),
        //       leading: const Icon(Icons.person),
        //       trailing: const Icon(Icons.add),
        //       focusColor: Colors.pink,
        //       tileColor: Colors.pink,
        //     ),
        //     ListTile(
        //       onTap: () => const HomePage(),
        //       title: const Text('Maya'),
        //       subtitle: const Text("Mayapuri"),
        //       leading: const Icon(Icons.person),
        //       trailing: const Icon(Icons.add),),
        //     const ListTile(
        //       title: Text('Hello'),
        //       subtitle: Text("HelloPage"),
        //       leading: Icon(Icons.person),
        //       trailing: Icon(Icons.add),
        //     ),
        //     ListTile(
        //       onTap: () {
        //       },
        //       title: const Text('Demo'),
        //       subtitle: const Text("Demopange"),
        //       leading: const Icon(Icons.person),
        //       trailing: const Icon(Icons.add),
        //       focusColor: Colors.pink,
        //       tileColor: Colors.pink,
        //     ),
        //     ListTile(
        //       onTap: () => const HomePage(),
        //       title: const Text('Maya'),
        //       subtitle: const Text("Mayapuri"),
        //       leading: const Icon(Icons.person),
        //       trailing: const Icon(Icons.add),),
        //     const ListTile(
        //       title: Text('Hello'),
        //       subtitle: Text("HelloPage"),
        //       leading: Icon(Icons.person),
        //       trailing: Icon(Icons.add),
        //     ),
        //     const ListTile(
        //       title: Text('Hello'),
        //       subtitle: Text("HelloPage"),
        //       leading: Icon(Icons.person),
        //       trailing: Icon(Icons.add),
        //     ),
        //     ListTile(
        //       onTap: () {
        //       },
        //       title: const Text('Demo'),
        //       subtitle: const Text("Demopange"),
        //       leading: const Icon(Icons.person),
        //       trailing: const Icon(Icons.add),
        //       focusColor: Colors.pink,
        //       tileColor: Colors.pink,
        //     ),
        //     ListTile(
        //       onTap: () => const HomePage(),
        //       title: const Text('Maya'),
        //       subtitle: const Text("Mayapuri"),
        //       leading: const Icon(Icons.person),
        //       trailing: const Icon(Icons.add),),
        //     const ListTile(
        //       title: Text('Hello'),
        //       subtitle: Text("HelloPage"),
        //       leading: Icon(Icons.person),
        //       trailing: Icon(Icons.add),
        //     ),
        //     const ListTile(
        //       title: Text('Hello'),
        //       subtitle: Text("HelloPage"),
        //       leading: Icon(Icons.person),
        //       trailing: Icon(Icons.add),
        //     ),
        //     ListTile(
        //       onTap: () {
        //       },
        //       title: const Text('Demo'),
        //       subtitle: const Text("Demopange"),
        //       leading: const Icon(Icons.person),
        //       trailing: const Icon(Icons.add),
        //       focusColor: Colors.pink,
        //       tileColor: Colors.pink,
        //     ),
        //     ListTile(
        //       onTap: () => const HomePage(),
        //       title: const Text('Maya'),
        //       subtitle: const Text("Mayapuri"),
        //       leading: const Icon(Icons.person),
        //       trailing: const Icon(Icons.add),),
        //     const ListTile(
        //       title: Text('Hello'),
        //       subtitle: Text("HelloPage"),
        //       leading: Icon(Icons.person),
        //       trailing: Icon(Icons.add),
        //     ),
        //     const ListTile(
        //       title: Text('Hello'),
        //       subtitle: Text("HelloPage"),
        //       leading: Icon(Icons.person),
        //       trailing: Icon(Icons.add),
        //     ),
        //     ListTile(
        //       onTap: () {
        //       },
        //       title: const Text('Demo'),
        //       subtitle: const Text("Demopange"),
        //       leading: const Icon(Icons.person),
        //       trailing: const Icon(Icons.add),
        //       focusColor: Colors.pink,
        //       tileColor: Colors.pink,
        //     ),
        //     ListTile(
        //       onTap: () => const HomePage(),
        //       title: const Text('Maya'),
        //       subtitle: const Text("Mayapuri"),
        //       leading: const Icon(Icons.person),
        //       trailing: const Icon(Icons.add),),
        //     const ListTile(
        //       title: Text('Hello'),
        //       subtitle: Text("HelloPage"),
        //       leading: Icon(Icons.person),
        //       trailing: Icon(Icons.add),
        //     ),
        //     const ListTile(
        //       title: Text('Hello'),
        //       subtitle: Text("HelloPage"),
        //       leading: Icon(Icons.person),
        //       trailing: Icon(Icons.add),
        //     ),
        //     ListTile(
        //       onTap: () {
        //       },
        //       title: const Text('Demo'),
        //       subtitle: const Text("Demopange"),
        //       leading: const Icon(Icons.person),
        //       trailing: const Icon(Icons.add),
        //       focusColor: Colors.pink,
        //       tileColor: Colors.pink,
        //     ),
        //     ListTile(
        //       onTap: () => const HomePage(),
        //       title: const Text('Maya'),
        //       subtitle: const Text("Mayapuri"),
        //       leading: const Icon(Icons.person),
        //       trailing: const Icon(Icons.add),),
        //     const ListTile(
        //       title: Text('Hello'),
        //       subtitle: Text("HelloPage"),
        //       leading: Icon(Icons.person),
        //       trailing: Icon(Icons.add),
        //),
          

    );
  }
}
