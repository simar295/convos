import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:convos/signuppage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class authservice {
////////////////////////////////////
//getting the username of person from sign in and storing it in firestore
  var getusername = "";

///////////////////////////////////
  ////instance for auth
  final FirebaseAuth firebaseauth = FirebaseAuth.instance;
  ////instance for  firestore
  final FirebaseFirestore firebasestore = FirebaseFirestore.instance;

  //create user signin method for firebase
  Future<UserCredential> signupwithemail(String email, String password) async {
    try {
      UserCredential usercreated =
          await firebaseauth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      //after creating user , a new doc for user in  user collection FIRESTORE
      firebasestore.collection('users').doc(usercreated.user!.uid).set({
        'uid': usercreated.user!.uid,
        'email': email,
         'username':getusername,
        /* 'username':getusername, */
      });

      return usercreated;
    }
    //cathing errors
    on FirebaseAuthException catch (error) {
      throw Exception(error.code);
    }
  }

  //signout method for firebase
  Future<void> signout() async {
    return await firebaseauth.signOut();
  }

  //login with email and password for firebase

  Future<UserCredential> loginwithemail(String email, String password) async {
    try {
      UserCredential usercred = await firebaseauth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
 //same for existing users and merging their data also , FIRESTORE
      firebasestore.collection('users').doc(usercred.user!.uid).set({
        'uid': usercred.user!.uid,
        'email': email,
        'username':getusername,
      }, SetOptions(merge: true));

      return usercred;
    }

    //cathing errors
    on FirebaseAuthException catch (error) {
      throw Exception(error.code);
    }
  }
}
