import 'dart:ui';

import 'package:convos/authservices.dart';
import 'package:convos/authservices.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key, required this.gettogglepages});
  final void Function() gettogglepages;
  

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();


  final authserviceinstance = authservice();
  void loginhere() {
    try {
      authserviceinstance.loginwithemail(
          emailcontroller.text, passwordcontroller.text);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
        e.toString(),
      )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 70),
              Icon(Icons.lock_open, size: 70),
              const Text(
                "welcome back !",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 219, 219, 219),
                ),
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.only(left: 8, right: 8),
                child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                      labelText: "  email", border: InputBorder.none),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 219, 219, 219),
                ),
                margin: EdgeInsets.fromLTRB(30, 0, 30, 5),
                padding: EdgeInsets.only(left: 8, right: 8),
                child: TextField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                      labelText: "  password", border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: loginhere,
                child: Container(
                    margin: EdgeInsets.only(top: 40),
                    alignment: Alignment.center,
                    width: 340,
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color.fromARGB(255, 82, 186, 255),
                          Color.fromARGB(255, 152, 125, 248)
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 219, 219, 219),
                    ),
                    child: const Text(
                      "login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              TextButton(
                  onPressed: widget.gettogglepages,
                  child: Text("dont have any account ? Sign up")),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Text(
                  "Convos",
                  style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                ),
              ),
              Text("A messenger  community app",
                  style: TextStyle(
                      foreground: Paint()
                        ..shader = LinearGradient(
                          colors: <Color>[
                            Colors.pinkAccent,
                            Colors.deepPurpleAccent,
                            Colors.red
                            //add more color here.
                          ],
                        ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)))),
            ],
          ),
        ),
      )),
    );
  }
}
