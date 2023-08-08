import 'package:convos/authgate.dart';
import 'package:convos/firebase_options.dart';
import 'package:convos/loginorregpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: authgate());
  }
}


/**
 * dart pub global activate flutterfire_cli
 *  flutterfire configure
 * flutter  pub add firebase_core
 * flutter  pub add firebase_auth
 * flutter pub add cloud_firestore
 * android/build.gradle/  minSdkVersion 19  multiDexEnabled true
 * / */