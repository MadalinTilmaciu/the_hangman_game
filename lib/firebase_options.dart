// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show TargetPlatform, defaultTargetPlatform, kIsWeb;

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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
      // ignore: no_default_cases
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDXcoYXzZ9_TvkfsBvteBPcsYNgVlmpz7E',
    appId: '1:567445636078:web:4c7a322710b37f6129c4ff',
    messagingSenderId: '567445636078',
    projectId: 'the-hangman-v2',
    authDomain: 'the-hangman-v2.firebaseapp.com',
    storageBucket: 'the-hangman-v2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCu5QON7UAZMxCE4c3NBjjL4bC2J08RYjQ',
    appId: '1:567445636078:android:1df0e2837965e6b229c4ff',
    messagingSenderId: '567445636078',
    projectId: 'the-hangman-v2',
    storageBucket: 'the-hangman-v2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWNW5uzVvUx4Zqlg1LJ6GZi7moyZM4Hp8',
    appId: '1:567445636078:ios:051264cf83cc344729c4ff',
    messagingSenderId: '567445636078',
    projectId: 'the-hangman-v2',
    storageBucket: 'the-hangman-v2.appspot.com',
    iosClientId: '567445636078-dhdd7ta8vgm8h373istt9ugbj5h8a9do.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );
}