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
    apiKey: 'AIzaSyBjwsVewXEnflGazoicxnIYhzzfQTxptDQ',
    appId: '1:126326748073:web:6659aab840d38bef6b0ab8',
    messagingSenderId: '126326748073',
    projectId: 'soccer-media',
    authDomain: 'soccer-media.firebaseapp.com',
    storageBucket: 'soccer-media.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBnUw1cMQ7VeUT4iM6O-X9tr84x3SjSiog',
    appId: '1:126326748073:android:805f15a6937b396e6b0ab8',
    messagingSenderId: '126326748073',
    projectId: 'soccer-media',
    storageBucket: 'soccer-media.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBeI8xgp-ugcG56R2GTjRESuzPHWNiHXqg',
    appId: '1:126326748073:ios:73ecc5a0b1e450646b0ab8',
    messagingSenderId: '126326748073',
    projectId: 'soccer-media',
    storageBucket: 'soccer-media.appspot.com',
    iosClientId: '126326748073-sim15e5u2ij9s79vr07dkcntemmom764.apps.googleusercontent.com',
    iosBundleId: 'com.example.soccerMediaFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBeI8xgp-ugcG56R2GTjRESuzPHWNiHXqg',
    appId: '1:126326748073:ios:73ecc5a0b1e450646b0ab8',
    messagingSenderId: '126326748073',
    projectId: 'soccer-media',
    storageBucket: 'soccer-media.appspot.com',
    iosClientId: '126326748073-sim15e5u2ij9s79vr07dkcntemmom764.apps.googleusercontent.com',
    iosBundleId: 'com.example.soccerMediaFlutter',
  );
}
