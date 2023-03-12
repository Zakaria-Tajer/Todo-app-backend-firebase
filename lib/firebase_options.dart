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
    apiKey: 'AIzaSyCBJ9H5jn_-mQQv0-BOoTiDgNWV6SxtOJI',
    appId: '1:605919841538:web:c7aa815c22a69d4f8a061b',
    messagingSenderId: '605919841538',
    projectId: 'todo-list-flutter-b109c',
    authDomain: 'todo-list-flutter-b109c.firebaseapp.com',
    storageBucket: 'todo-list-flutter-b109c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBaHC6_c0S_7sb17z79o1s0qWqUqGqjJQk',
    appId: '1:605919841538:android:4d7b9fda633bb8358a061b',
    messagingSenderId: '605919841538',
    projectId: 'todo-list-flutter-b109c',
    storageBucket: 'todo-list-flutter-b109c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDlSIiLjB3M0B77K0EoH7esGBABqywxYS4',
    appId: '1:605919841538:ios:d5ddfdc23d6dc53b8a061b',
    messagingSenderId: '605919841538',
    projectId: 'todo-list-flutter-b109c',
    storageBucket: 'todo-list-flutter-b109c.appspot.com',
    iosClientId: '605919841538-kr5bblcq3jasq1ad0rvr6tc14pbh4fpl.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseTodolist',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDlSIiLjB3M0B77K0EoH7esGBABqywxYS4',
    appId: '1:605919841538:ios:d5ddfdc23d6dc53b8a061b',
    messagingSenderId: '605919841538',
    projectId: 'todo-list-flutter-b109c',
    storageBucket: 'todo-list-flutter-b109c.appspot.com',
    iosClientId: '605919841538-kr5bblcq3jasq1ad0rvr6tc14pbh4fpl.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseTodolist',
  );
}
