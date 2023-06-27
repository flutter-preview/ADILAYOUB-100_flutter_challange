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
    apiKey: 'AIzaSyBzNHebBoRLZdJddr45K8SGU3QyFI324cY',
    appId: '1:684464882131:web:9741b3982dec496521ef26',
    messagingSenderId: '684464882131',
    projectId: 'gderiveadilayoub',
    authDomain: 'gderiveadilayoub.firebaseapp.com',
    storageBucket: 'gderiveadilayoub.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBBGmSwoiIhujU3ldkXL0k6-jYlyL02rYY',
    appId: '1:684464882131:android:6508a703cf144d5521ef26',
    messagingSenderId: '684464882131',
    projectId: 'gderiveadilayoub',
    storageBucket: 'gderiveadilayoub.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDUHXSRFbEVhkz7fgyitb4vNuRqYmmyNiM',
    appId: '1:684464882131:ios:58e8fecb49a06b1521ef26',
    messagingSenderId: '684464882131',
    projectId: 'gderiveadilayoub',
    storageBucket: 'gderiveadilayoub.appspot.com',
    iosClientId: '684464882131-p97t2s7sb2g6tb8nbmb0qq4v3i57bcvt.apps.googleusercontent.com',
    iosBundleId: 'com.adilayoubbhat.flutteChallange',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDUHXSRFbEVhkz7fgyitb4vNuRqYmmyNiM',
    appId: '1:684464882131:ios:b205053ce9ea850c21ef26',
    messagingSenderId: '684464882131',
    projectId: 'gderiveadilayoub',
    storageBucket: 'gderiveadilayoub.appspot.com',
    iosClientId: '684464882131-q5g5fgmcjmp1k4ci8in4kjdkqa5bp9gj.apps.googleusercontent.com',
    iosBundleId: 'com.adilayoubbhat.flutteChallange.RunnerTests',
  );
}
