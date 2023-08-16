import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'authservices.dart';
import 'chatpage.dart';

class hompage extends StatefulWidget {
  const hompage({super.key});

  @override
  State<hompage> createState() => _hompageState();
}

class _hompageState extends State<hompage> {
  ///instance of auth
  final FirebaseAuth authinstance = FirebaseAuth.instance;

  ///signing out users
  void signouthere() {
    final authserviceinstance = authservice();
    authserviceinstance.signout();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("CONVOS"),
        actions: [
          IconButton(onPressed: signouthere, icon: Icon(Icons.logout_outlined))
        ],
      ),
      body: builduserlist(),
    );
  }

//building a list of users accept the current loggedin user

  Widget builduserlist() {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('users').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text("error");
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: Text("loading....."));
        }
        return ListView(
          children: snapshot.data!.docs
              .map<Widget>((doc) => builduserlistitem(doc))
              .toList(),
        );
      },
    );
  }

  /////////indivisial listitem
  Widget builduserlistitem(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data()! as Map<String, dynamic>;

    //displaying all users except  current user
    if (authinstance.currentUser!.email != data['email']) {
      return ListTile(
        title: Text(data["email"]),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => chatpage(
                getuseremail: data['email'],
                getuserid: data['uid'],
                getusername: data['username'],
              ),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }
}
