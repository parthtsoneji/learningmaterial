import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static Count? mainData;

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    List<Count> data = [
      Count("Mathematik",Icons.account_balance_rounded),
      Count("Physik",Icons.add_alert_sharp),
      Count("Deutsch",Icons.connected_tv_outlined),
      Count("Chemie",Icons.ac_unit_sharp),
      Count("Sachunterite",Icons.account_tree_sharp),
      Count("Biologie",Icons.energy_savings_leaf_rounded),
      Count("Englisch",Icons.military_tech, ),
      Count("+10 More"),
    ];
    return Scaffold(
      body:
       SafeArea(
         child: Stack(
          children: [

                // gridview biulder
                Padding(
                  padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.3,bottom: MediaQuery.of(context).size.height / 60,right:MediaQuery.of(context).size.width / 16,left: MediaQuery.of(context).size.width /16),
                  child: GridView.builder(itemCount: data.length,gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2,crossAxisCount: 2,
                    crossAxisSpacing: 6,mainAxisSpacing: 5),
                    itemBuilder: (context, index)
                    {
                      HomePage.mainData = data[index];
                      return GestureDetector(
                        onTap:  () {
                          setState(() {
                            index == 7 ? showModalBottomSheet(context: context, builder: (context) => const Center(child: Text("Hello",style: TextStyle(fontSize: 35)))) : HomePage();
                          });
                        },
                        child: Card(
                            color: Colors.white,
                            elevation: 0.3,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
                            child: Row(
                              children: [
                                index == 7 ? Padding(
                                  padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width / 50),
                                  child: const Text(""),
                                ) :
                                Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 50),
                                    child: Icon(data[index].icon,color: Colors.grey,size: 26)),

                                index == 7 ?const Text("+10 More",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)) : Padding(
                                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width /29),
                                  child: Text(data[index].title,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                ),],
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
                        Text("Learning Material",style: TextStyle(fontSize: 29,color: Colors.white)),
                        SizedBox(height: 2),
                        Text("Search for Learning Material",style: TextStyle(fontSize: 15,color: Colors.white)),
                        ],
                    )
                ),
            //  Person button
            Positioned(
              left: MediaQuery.of(context).size.width / 1.28,
              top: MediaQuery.of(context).size.height / 60,
              child: Container(
                height: 60,width: 60,
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.blue,
                    boxShadow: [
                      BoxShadow(blurRadius: 15.0,color: Colors.white)]),
                child: const Icon(Icons.person,size: 25,color: Colors.white),
              ),
            ),

                // Search TextField
                Positioned(
                  width: MediaQuery.of(context).size.width / 1.15,
                  top: MediaQuery.of(context).size.height /2.8,
                  height: MediaQuery.of(context).size.height / 15,
                  left: MediaQuery.of(context).size.width / 16,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Search for terms like "Geometry"',
                          prefixIcon: const Icon(Icons.search,color: Colors.black45,),
                          fillColor: Colors.white,filled: true,
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide: const BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide: const BorderSide(color: Colors.white))
                      ),
                    ),
                ),



          ],),
       )
    );
  }
}
//For grid
class Count {
  Count(this.title,[this.icon]);
   IconData? icon;
   String title;
}
