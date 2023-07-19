// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Stack(
            children: [
              CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 550,
                    backgroundColor: Colors.black,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(
                            "asset/img1.png",
                          ),
                          // scale: 2,
                          alignment: Alignment.topCenter,
                          fit: BoxFit.cover,
                        )),
                        child: Container(
                          // alignment: Alignment.bottomRight,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  colors: [
                                Color.fromARGB(255, 3, 3, 3),
                                Colors.black.withOpacity(.3)
                              ])),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Ankit Jatav",
                                  style: TextStyle(
                                      fontSize: 55,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                //   Text("Web Developer",style: TextStyle(fontSize: 30,letterSpacing: 1,
                                // fontWeight: FontWeight.w500,color: Colors.white,height: .5),),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "60 videos",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: const Color.fromARGB(
                                              153, 233, 231, 231)),
                                    ),
                                    Text(
                                      "420k Subcriptions",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: const Color.fromARGB(
                                              153, 219, 217, 217)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverList(
                      delegate: SliverChildListDelegate([
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "With Chrome profiles you can separate all your Chrome stuff.  stuff. Create profiles for friends and family, Create profiles for friends and family, or split between work and fun.",
                            style:
                                TextStyle(fontSize: 15, color: Colors.white70),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Born",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "March, 12th 2003, Datia,MP",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 216, 215, 215)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Nationality",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "Indian",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 216, 215, 215)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Videos",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  MakeVideo("asset/img1.png"),
                                  MakeVideo("asset/img1.png"),
                                  MakeVideo("asset/img1.png"),
                                  MakeVideo("asset/img1.png"),
                                  MakeVideo("asset/img1.png"),
                                  MakeVideo("asset/img1.png"),
                                  MakeVideo("asset/img1.png"),
                                  MakeVideo("asset/img1.png"),
                                ],
                              )),
                          SizedBox(
                            height: 120,
                          ),
                        ],
                      ),
                    ),
                  ]))
                ],
              ),
              Positioned.fill(
                  bottom: 50,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 253, 169, 13),
                          borderRadius: BorderRadius.circular(50)),
                      child: Align(
                        child: Text(
                          "Hire me",
                          style: TextStyle(
                              fontSize: 23,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }

  Widget MakeVideo(image) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 13, 143, 56),
            image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage(image),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(.3)
          ])),
          child: Align(
            child: Icon(
              Icons.play_arrow,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
