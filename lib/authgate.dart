import 'package:convos/homepage.dart';
import 'package:convos/loginorregpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class authgate extends StatelessWidget {
  const authgate({super.key});
/////stream builder checks for data in firebase and builds some widget ,
  ///here , streambuilder looks for authstatechanges and build screen is the stream has data or not
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        //user is loggedin
        if (snapshot.hasData) {
          return hompage();
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        //user is not loggedin
        else
          return loginorregpage();
      },
    ));
  }
}
