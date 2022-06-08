import 'package:flutter/material.dart';
import 'package:new_app/home_page.dart';
import 'package:new_app/register.dart';

class LoginPage extends StatelessWidget {
  final bool obscureText;
  const LoginPage({Key? key, required this.obscureText}) : super(key: key);

  // @override
  // void initState() {
  //   _passwordVisible = false;
  // }

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
              height: 430,
              decoration: BoxDecoration(
                color: Color.fromARGB(153, 224, 224, 224),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 275,
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text("Username"),
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
                          label: Text("Password"),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye)),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 30, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot Password?",
                          style: TextStyle(fontSize: 15, color: Colors.brown),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()),
                          );
                        },
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: Color.fromARGB(255, 123, 102, 94),
                          shadowColor: Colors.white,
                          textStyle: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const register(
                                  obsureText: true,
                                )),
                      );
                      // Navigator.of(context).pushReplacement(MaterialPageRoute(
                      //     builder: ((context) => const register())));
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Create new account",
                            style: TextStyle(fontSize: 15, color: Colors.brown),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
