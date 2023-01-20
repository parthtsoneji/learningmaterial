import 'package:flutter/material.dart';
import 'package:learningmaterial/Model/personPage.dart';
import 'package:learningmaterial/Model/mainScreen.dart';

class DetailPage extends StatefulWidget {
  final Person data;
   const DetailPage({Key? key,required this.data,}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),

          //Scrolling Details
          child: Stack(
            children: [
              SingleChildScrollView(
              child: Column(children: [
                // Person Image
                Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(widget.data.image),
                    radius: 40,
                  ),
                ),
                // Person Name
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    widget.data.name,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                const SizedBox(height: 10),

                // Icon more Details
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.check_circle_outline,
                        color: Colors.black, size: 15),
                    const SizedBox(width: 3),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: Text(widget.data.desc,
                            style: const TextStyle(
                                color: Colors.black45, fontSize: 13),
                            maxLines: 2,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis))
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(widget.data.icons,size: 20),
                        const SizedBox(height: 8),
                        const Text("English",style: TextStyle(fontSize: 12),)
                      ],
                    ),
                    Container(
                      width: 1,
                      height: MediaQuery.of(context).size.height / 12,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    const Text("Online & \n Person",style: TextStyle(fontSize: 12)),
                    Container(
                      width: 1,
                      height: MediaQuery.of(context).size.height / 12,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    Column(
                      children: [
                        Text(widget.data.num,style: TextStyle(fontSize: 12),),
                        const SizedBox(height: 8),
                        const Text("English",style: TextStyle(fontSize: 12),)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 30),

                // Person Description
                SizedBox(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: Text(widget.data.desc,
                        style: const TextStyle(color: Colors.black, fontSize: 15),
                        maxLines: 50,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis)),
                const SizedBox(height: 30),

                //Person Project and Icon
                Column(
                  children: [
                    const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Surproject",
                          style: TextStyle(fontSize: 15, color: Colors.black45),
                        )),
                    const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        children: [
                          Icon(widget.data.icons),
                          const SizedBox(height: 8),
                          const Text("English")
                        ],
                      ),
                    )
                  ],
                ),
              ]),
            ),
              GestureDetector(
                onTap: () {
                  MainPage.controller.add(false);
                },
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.cancel_outlined, size: 40),
                ),
              ),
          ]),
        ),
      ),

      //floating button for contact more
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        isExtended: true,
        extendedPadding: EdgeInsets.all(MediaQuery.of(context).size.width / 4),
        onPressed: () {},
        label: const Text("Contact Tour ->"),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
    );
  }
}
