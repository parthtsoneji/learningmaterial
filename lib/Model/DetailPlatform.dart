import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:flutter_rating_bar/flutter_rating_bar.dart";
import 'FormPage.dart';

// ignore: camel_case_types
class PlatFormPage extends StatefulWidget {
  const PlatFormPage({
    Key? key, required this.demo,
  }) : super(key: key);
  final Test demo;
  @override
  // ignore: no_logic_in_create_state
  State<PlatFormPage> createState() => _PlatFormPageState();
}

// ignore: camel_case_types
class _PlatFormPageState extends State<PlatFormPage> {
  _PlatFormPageState();

  final ScrollController _scrollController = ScrollController();
  bool iconcolor = false;


  @override
  void initState() {
    _scrollController.addListener(() {
      setState(() {
        iconcolor = _scrollController.offset>150 ? true : false;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          // Stack for image and back arrow
            child: Scaffold(
              body:
                CustomScrollView(
                    controller: _scrollController,
                    slivers: [
                  SliverAppBar(
                    leading: iconcolor == true ? IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back,color: Colors.grey,),
                    ) : IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                    elevation: 0,
                    pinned: true,
                    floating: true, snap: true ,
                    backgroundColor: Colors.transparent,
                    expandedHeight: 150,
                    actions: [
                      iconcolor == true ? const Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(Icons.share,color: Colors.grey)) :
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                            child: Icon(Icons.share))
                    ],
                    flexibleSpace: const FlexibleSpaceBar(
                      background: Image(
                        image: AssetImage("images/books.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 14,
                              ),
                              child: Container(
                                height: 52,
                                width: 52,
                                decoration: const BoxDecoration(color: Colors.white),
                                child: Image.asset(
                                  widget.demo.image,
                                ),
                              ),
                            ),

                            // Name of data & Free and paid Button
                            Padding(
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width / 14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 5),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Text(widget.demo.tegline,
                                            style: const TextStyle(
                                                fontSize: 19, fontWeight: FontWeight.bold))),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: (widget.demo.payment == "FREE")
                                                  ? Colors.blue
                                                  : Colors.deepPurpleAccent,
                                              borderRadius: BorderRadius.circular(8.0)),
                                          child: Center(
                                            child: Text(
                                              widget.demo.payment,
                                              style: const TextStyle(
                                                  color: Colors.white, fontSize: 13.5),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      style: TextStyle(fontSize: 15),
                                      "Subject",
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                )),
                          ]),

                          // Gridview for subjects Details
                          Padding(
                            padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width / 20,
                                left: MediaQuery.of(context).size.width / 20),
                            child: GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 2,
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 7,
                                  mainAxisSpacing: 4),
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: widget.demo.subjectname.length,
                              itemBuilder: (context, i) {
                                return Card(
                                  elevation: 0.3,
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      const SizedBox(width: 5),
                                      Icon(
                                        widget.demo.Icons[i],
                                        size: 20,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(width: MediaQuery.of(context).size.width / 40),
                                      Text(
                                        widget.demo.subjectname[i],
                                        style: const TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),

                          // Description Of data
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 16,
                                right: MediaQuery.of(context).size.width / 20,
                                top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Description
                                const Text(
                                  "Description",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                const SizedBox(height: 7),
                                SizedBox(
                                    height: 35,
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(widget.demo.detail,
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 11),
                                        maxLines: 2)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "School Year",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                const SizedBox(height: 3),
                                const Text(
                                  "Klasse 1 bis 10",
                                  style: TextStyle(fontSize: 11),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),

                                //Rating bar
                                const Text(
                                  "Rating",
                                  style: TextStyle(fontSize: 13, color: Colors.grey),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      itemSize: 15,
                                      direction: Axis.horizontal,
                                      itemCount: 5,
                                      ignoreGestures: true,
                                      itemPadding:
                                      const EdgeInsets.symmetric(horizontal: 2.0),
                                      itemBuilder: (context, index) => const Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      onRatingUpdate: (rating) {},
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        widget.demo.rating,
                                        style: const TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "121231 ratings",
                                  style: TextStyle(fontSize: 11, color: Colors.grey),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "App stores & link",
                                  style: TextStyle(fontSize: 11, color: Colors.grey),
                                ),
                                const SizedBox(height: 3),
                                const Text(
                                  "website",
                                  style: TextStyle(fontSize: 11, color: Colors.blue),
                                ),

                                //Google play & apple store Images
                                SizedBox(
                                  height: 70,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Image(image: AssetImage("images/googleplay.png")),
                                      SizedBox(width: 20),
                                      Image(image: AssetImage("images/applestore.png")),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                ])
            )
    );
  }
}