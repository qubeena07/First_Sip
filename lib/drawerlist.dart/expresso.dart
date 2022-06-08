import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:new_app/alertdialog.dart';
import 'package:new_app/bottomnav.dart';
import 'package:new_app/drawer.dart';
import 'package:new_app/drawerlist.dart/chiya.dart';
import 'package:new_app/drawerlist.dart/size.dart';
import 'package:new_app/drawerlist.dart/sugar.dart';
import 'package:new_app/home_page.dart';
import 'package:new_app/login_page.dart';
import 'package:new_app/my_icons_icons.dart';
import 'package:new_app/my_icons_icons.dart';

class Expresso extends StatelessWidget {
  const Expresso({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _itemCount = 0;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => LoginPage(obscureText: true)));
                },
                icon: Icon(Icons.logout))
          ],
          title: Text(
            "EXPRESSO",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color.fromARGB(255, 163, 95, 70),
            ),
          ),
          backgroundColor: Color.fromARGB(153, 224, 224, 224),
        ),
        bottomNavigationBar: BottomNav(),
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Text(
                  //   "Chiya/Tea",
                  //   style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 30,
                  //       color: Colors.black),
                  // ),
                  Icon(
                    MyIcons.expres1,
                    size: 200,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 420,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(153, 224, 224, 224),
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
                                "Expresso",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Rs. 120",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 168, 103, 80),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15),
                              ),
                              SizedBox(
                                height: 10,
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
                                height: 5,
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
                                              MyIcons.expres1,
                                              size: 20,
                                            ),
                                          ),
                                          Tab(
                                            icon: Icon(
                                              MyIcons.expres1,
                                              size: 28,
                                            ),
                                          ),
                                          Tab(
                                            icon: Icon(
                                              MyIcons.expres1,
                                              size: 35,
                                            ),
                                          ),
                                        ]),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
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
                                "(In cube)",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 112, 112, 112),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              RatingBar.builder(
                                  minRating: 0,
                                  itemBuilder: (context, _) => Icon(
                                        Icons.square,
                                        color:
                                            Color.fromARGB(255, 168, 103, 80),
                                        size: 8,
                                      ),
                                  onRatingUpdate: (rating) {}),
                              // Container(
                              //   width: 205,
                              //   height: 30,
                              //   decoration: BoxDecoration(
                              //     color: Colors.white60,
                              //     borderRadius: BorderRadius.circular(15),
                              //   ),
                              //   child: TabBar(
                              //       indicator: BoxDecoration(
                              //           color:
                              //               Color.fromARGB(255, 168, 103, 80),
                              //           borderRadius:
                              //               BorderRadius.circular(15)),
                              //       labelColor: Colors.black,
                              //       unselectedLabelColor: Colors.white,
                              //       tabs: [
                              //         Tab(
                              //           text: "One",
                              //           // icon: Icon(
                              //           //   Icons.square,
                              //           //   size: 20,
                              //           // ),
                              //         ),
                              //         Tab(
                              //           text: "Two",
                              //           // icon: Icon(
                              //           //   Icons.square,
                              //           //   size: 28,
                              //           // ),
                              //         ),
                              //         Tab(
                              //           text: "Three",
                              //           // icon: Icon(
                              //           //   Icons.square,
                              //           //   size: 35,
                              //           // ),
                              //         ),
                              //       ]),
                              // ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Quantity",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(Icons.remove),
                                      onPressed: () {
                                        print("-1");
                                      }
                                      // => setState(()=> _itemCount= 0 ? _itemCount-- :_itemCount),
                                      ),
                                  Text("1"),
                                  IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                        print("+1");
                                      }
                                      // => setState(()=> _itemCount= 0 ? _itemCount-- :_itemCount),
                                      ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
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
                                    onPressed: () {
                                      showAlertDialog(context);
                                    },
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
                                    onPressed: () {
                                      showAlertDialog1(context);
                                    },
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
