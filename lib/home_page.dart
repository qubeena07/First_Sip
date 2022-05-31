import 'package:flutter/material.dart';
import 'package:new_app/bottomnav.dart';
import 'package:new_app/drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF198BAA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNav(),
      // currentIndex: 1,
      // backgroundColor: Colors.white60,
      // items: [
      //   BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications), label: "Notification"),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //     label: "Home",
      //   ),
      //   BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_cart), label: "Cart")
      // ]),
      body: Container(
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
      ),
      drawer: MyDrawer(),
    );
  }
}
