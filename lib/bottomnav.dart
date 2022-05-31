import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 1,
        backgroundColor: Colors.white60,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.brown,
              ),
              label: "Notification"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.brown,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.brown,
              ),
              label: "Cart")
        ]);
  }
}
