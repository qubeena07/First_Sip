import 'package:flutter/material.dart';
import 'package:new_app/drawerlist.dart/chiya.dart';
import 'package:new_app/main.dart';
import 'package:new_app/my_icons_icons.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white60,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Dipika Ranabhat"),
            accountEmail: Text("qubeena7@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/logo.png"),
              backgroundColor: Colors.transparent,
            ),

            // currentAccountPictureSize: Size(200, 100)
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              MyIcons.tea,
              size: 35,
              color: Color.fromARGB(255, 105, 46, 25),
            ),
            title: Text(
              "Chiya/Tea",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Chiya()));
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(MyIcons.expres1,
                size: 35, color: Color.fromARGB(255, 105, 46, 25)),
            title: Text(
              "Expresso",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(MyIcons.capp,
                size: 35, color: Color.fromARGB(255, 105, 46, 25)),
            title: Text(
              "Cappuccino",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(MyIcons.mocha1,
                size: 35, color: Color.fromARGB(255, 105, 46, 25)),
            title: Text(
              "Mocha",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(MyIcons.latte,
                size: 35, color: Color.fromARGB(255, 105, 46, 25)),
            title: Text(
              "Latte",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(MyIcons.hotlemon,
                size: 35, color: Color.fromARGB(255, 105, 46, 25)),
            title: Text(
              "Hot Lemon",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
