import 'package:flutter/material.dart';
import 'package:new_app/login_page.dart';

class register extends StatelessWidget {
  final bool obsureText;
  const register({Key? key, required this.obsureText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Image.asset(
                "images/logoo.png",
                width: 150,
                height: 150,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 350,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Register",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 275,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Username",
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 275,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 275,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.lock),
                        ),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 275,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          prefixIcon: Icon(Icons.verified),
                        ),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          showAlertDialog(context);
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             LoginPage(obscureText: true)));

                          // child:
                          // AlertDialog(
                          //   title: Text("Your account has been registered"),
                          //   actions: <Widget>[
                          //     FlatButton(
                          //         onPressed: () {
                          //           Navigator.push(
                          //               context,
                          //               MaterialPageRoute(
                          //                   builder: (context) =>
                          //                       LoginPage(obscureText: true)));
                          //         },
                          //         child: Text("OK"))
                          //   ],
                          // );
                        },
                        child: Text(
                          "Register",
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          primary: Color.fromARGB(255, 123, 102, 94),
                          shadowColor: Colors.white,
                          textStyle: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                          // CircleBorder(
                          //   side: left
                          // )
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget myButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext) => LoginPage(obscureText: true)));
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Your account has been registered"),
    actions: [
      myButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
