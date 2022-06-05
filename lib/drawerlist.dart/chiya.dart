import 'package:flutter/material.dart';
import 'package:new_app/drawerlist.dart/size.dart';
import 'package:new_app/drawerlist.dart/sugar.dart';
import 'package:new_app/home_page.dart';
import 'package:new_app/my_icons_icons.dart';
import 'package:new_app/my_icons_icons.dart';

class Chiya extends StatelessWidget {
  const Chiya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 163, 95, 70),
                    Color.fromARGB(255, 79, 52, 41),
                    Color.fromARGB(255, 168, 103, 80),
                  ]),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Chiya/Tea",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                  ),
                  Icon(
                    MyIcons.tea,
                    size: 250,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 450,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Chiya/Tea",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Rs. 25",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 168, 103, 80),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                "Size",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 180,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white60,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: TabBar(
                                        indicator: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 168, 103, 80),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        labelColor: Colors.black,
                                        unselectedLabelColor: Colors.white,
                                        tabs: [
                                          Tab(
                                            icon: Icon(
                                              MyIcons.tea,
                                              size: 20,
                                            ),
                                          ),
                                          Tab(
                                            icon: Icon(
                                              MyIcons.tea,
                                              size: 28,
                                            ),
                                          ),
                                          Tab(
                                            icon: Icon(
                                              MyIcons.tea,
                                              size: 35,
                                            ),
                                          ),
                                        ]),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                "Sugar",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "(In spoon)",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 112, 112, 112),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 205,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: TabBar(
                                    indicator: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 168, 103, 80),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    labelColor: Colors.black,
                                    unselectedLabelColor: Colors.white,
                                    tabs: [
                                      Tab(
                                        text: "One",
                                        // icon: Icon(
                                        //   Icons.square,
                                        //   size: 20,
                                        // ),
                                      ),
                                      Tab(
                                        text: "Two",
                                        // icon: Icon(
                                        //   Icons.square,
                                        //   size: 28,
                                        // ),
                                      ),
                                      Tab(
                                        text: "Three",
                                        // icon: Icon(
                                        //   Icons.square,
                                        //   size: 35,
                                        // ),
                                      ),
                                    ]),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RaisedButton(
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0),
                                    ),
                                    padding: const EdgeInsets.all(20),
                                    textColor: Colors.white,
                                    color: Color.fromARGB(255, 168, 103, 80),
                                    onPressed: () {},
                                    child: Text("Buy"),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  RaisedButton(
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0),
                                    ),
                                    padding: const EdgeInsets.all(20),
                                    textColor: Colors.white,
                                    color: Color.fromARGB(255, 168, 103, 80),
                                    onPressed: () {},
                                    child: Text("Add To Cart"),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
