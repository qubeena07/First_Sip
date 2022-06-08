import 'dart:html';

import 'package:flutter/material.dart';
import 'package:new_app/cart.dart';
import 'package:new_app/home_page.dart';
import 'package:new_app/notification.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 1;
  final screens = [
    NotificationScreen(),
    Home(),
    Cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(255, 163, 95, 70),
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        backgroundColor: Colors.white60,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              // color: Color.fromARGB(255, 163, 95, 70),
            ),
            label: "Notification",
            // backgroundColor: Color.fromARGB(255, 163, 95, 70),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              // color: Color.fromARGB(255, 163, 95, 70),
            ),
            label: "Home",
            // backgroundColor: Color.fromARGB(255, 163, 95, 70),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              // color: Color.fromARGB(255, 163, 95, 70),
            ),
            label: "Cart",
            // backgroundColor: Color.fromARGB(255, 163, 95, 70),
          ),
        ]);
  }
}
