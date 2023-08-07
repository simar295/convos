import 'package:convos/loginpage.dart';
import 'package:convos/signuppage.dart';
import 'package:flutter/material.dart';

class loginorregpage extends StatefulWidget {
  const loginorregpage({super.key});

  @override
  State<loginorregpage> createState() => _loginorregpageState();
}

class _loginorregpageState extends State<loginorregpage> {
  bool showlogin = true;

  void togglepage() {
    setState(() {
      showlogin = !showlogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showlogin) {
      return loginpage(
        gettogglepages: togglepage,
      );
    } else {
      return signuppage(
        gettogglepages: togglepage,
      );
    }
  }
}
