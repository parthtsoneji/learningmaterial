import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    List<Count> data = [
      Count(icon: Icons.account_balance_rounded,title: "Mathematics"),
      Count(icon: Icons.add_alert_sharp,title: "Physics"),
      Count(icon: Icons.connected_tv_outlined, title: "Schanchine"),
      Count(icon: Icons.ac_unit_sharp, title: "Chemistic"),
      Count(icon: Icons.account_tree_sharp, title: "Athetic"),
      Count(icon: Icons.energy_savings_leaf_rounded, title: "English"),
      Count(icon: Icons.military_tech, title: "Phycology"),
      Count(title: "10+ More", icon: Icons.ac_unit_sharp)
    ];
    return Scaffold(
      body:
       Stack(
        children: [

              // gridview biulder
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.3,right: 20,left: 20,bottom: 20),
                child: GridView.builder(itemCount: data.length,gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2,crossAxisCount: 2,
                  crossAxisSpacing: 20,mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return Card(
                        color: Colors.white,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(data[index].icon,color: Colors.grey,size: 30),
                            Text(data[index].title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),],
                        ),
                    );},
                )
              ),

              // Background image
              Image(image: const AssetImage('images/mainmoon.png'),
                   fit: BoxFit.cover,height: MediaQuery.of(context).size.height / 2.5,
                   width: MediaQuery.of(context).size.width,),

              // Heading Text
              Positioned(top: MediaQuery.of(context).size.height / 3.8,
                  left: MediaQuery.of(context).size.width / 25,
                  child: Column(
                    children: const[
                      Text("Learning Material",style: TextStyle(fontSize: 25,color: Colors.white),),
                      SizedBox(height: 10),
                      Text("Search for learning Material",style: TextStyle(fontSize: 17,color: Colors.white),)
                    ],
                  )
              ),

              //  Person button
              Positioned(
                left: MediaQuery.of(context).size.width / 1.28,
                top: MediaQuery.of(context).size.height /120,
                bottom: MediaQuery.of(context).size.height /1.28,
                child: Container(
                  height: 60,width: 60,
                  decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.blue,
                      boxShadow: [
                        BoxShadow(blurRadius: 10.0,color: Colors.white)]),
                  child: const Icon(Icons.person,size: 25,color: Colors.white),
                ),
              ),

              // Search Textfield
              Positioned(
                width: MediaQuery.of(context).size.width / 1.25,
                top: MediaQuery.of(context).size.height /2.8,
                left: MediaQuery.of(context).size.width / 10,
                child: TextField(
                  decoration: InputDecoration(hintText: 'Search for terms like "Geometri"',
                      prefixIcon: const Icon(Icons.search),
                      fillColor: Colors.white,filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                  ),
                ),
              ),
        ],)
    );
  }
}

//For grid
class Count {
  Count({required this.icon,required this.title});
   IconData icon;
   String title;
}
