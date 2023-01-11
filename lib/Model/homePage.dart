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
      Count(icon: Icons.account_balance_rounded,title: "Mathema"),
      Count(icon: Icons.add_alert_sharp,title: "Physics"),
      Count(icon: Icons.connected_tv_outlined, title: "Schanch"),
      Count(icon: Icons.ac_unit_sharp, title: "Chemis"),
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
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.3,right: 23,left: 23),
                child: GridView.builder(itemCount: data.length,gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2,crossAxisCount: 2,
                  crossAxisSpacing: 8,mainAxisSpacing: 8),
                  itemBuilder: (context, index) {
                    return Card(
                        color: Colors.white,
                        margin: EdgeInsets.zero,
                        elevation: 1.2,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
                        child: Padding(
                          padding:  const EdgeInsets.only(left: 5,right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(data[index].icon,color: Colors.grey,size: 30),
                              const SizedBox(width: 12),
                              Text(data[index].title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),],
                          ),
                        ),
                    );},
                )
              ),

              // Background image
              Image(image: const AssetImage('images/mainmoon.png'),
                   fit: BoxFit.cover,height: MediaQuery.of(context).size.height / 2.5,
                   width: MediaQuery.of(context).size.width,),

              // Heading Text
              Positioned(top: MediaQuery.of(context).size.height / 4,
                  left: MediaQuery.of(context).size.width / 25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Learning Material",style: TextStyle(fontSize: 30,color: Colors.white)),
                      SizedBox(height: 2),
                      Text("Search for learning Material",style: TextStyle(fontSize: 18,color: Colors.white)),
                      ],
                  )
              ),

              // Search TextField
              Positioned(
                width: MediaQuery.of(context).size.width / 1.15,
                top: MediaQuery.of(context).size.height /2.8,
                height: MediaQuery.of(context).size.height / 15,
                left: MediaQuery.of(context).size.width / 16,
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Search for terms like "Geometric"',
                        prefixIcon: const Icon(Icons.search,color: Colors.black45,),
                        fillColor: Colors.white,filled: true,
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide: const BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide: const BorderSide(color: Colors.white))
                    ),
                  ),
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
