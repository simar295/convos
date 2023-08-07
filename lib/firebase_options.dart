// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAyDGCYojQJG64B5qIO5RVsEqliStDNEz4',
    appId: '1:84245951897:web:7aab7597ad99d89cbccf08',
    messagingSenderId: '84245951897',
    projectId: 'convos-baf46',
    authDomain: 'convos-baf46.firebaseapp.com',
    storageBucket: 'convos-baf46.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7OfgkyDlWX3OcEdISQsP3Mp1GKtwkEQc',
    appId: '1:84245951897:android:716c335874ace141bccf08',
    messagingSenderId: '84245951897',
    projectId: 'convos-baf46',
    storageBucket: 'convos-baf46.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBVjYSSCRJJgLDsSQxVpMNz8PbjWe8eKb4',
    appId: '1:84245951897:ios:fee17d86c9b12d0bbccf08',
    messagingSenderId: '84245951897',
    projectId: 'convos-baf46',
    storageBucket: 'convos-baf46.appspot.com',
    iosClientId: '84245951897-j354bo8qc194vfd3q409mkus7qfcr501.apps.googleusercontent.com',
    iosBundleId: 'com.example.convos',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBVjYSSCRJJgLDsSQxVpMNz8PbjWe8eKb4',
    appId: '1:84245951897:ios:4af6bc866d384c3cbccf08',
    messagingSenderId: '84245951897',
    projectId: 'convos-baf46',
    storageBucket: 'convos-baf46.appspot.com',
    iosClientId: '84245951897-vmok28h5gvrq39vld2ugq2m3gkdnpnpu.apps.googleusercontent.com',
    iosBundleId: 'com.example.convos.RunnerTests',
  );
}
