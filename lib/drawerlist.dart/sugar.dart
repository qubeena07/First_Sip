import 'package:flutter/material.dart';

class Sugar extends StatelessWidget {
  const Sugar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
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
                Container(
                  width: 180,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TabBar(
                      indicator: BoxDecoration(
                          color: Color.fromARGB(255, 168, 103, 80),
                          borderRadius: BorderRadius.circular(15)),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.white,
                      tabs: [
                        Tab(
                          icon: Icon(
                            Icons.square,
                            size: 20,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.square,
                            size: 20,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.square,
                            size: 20,
                          ),
                        ),
                      ]),
                )
              ],
            ),
          ),
        ));
  }
}
