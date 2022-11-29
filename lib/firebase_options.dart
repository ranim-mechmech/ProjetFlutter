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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBTnUfti5ktKGDs2Llfg9a5QnVl3d8ejWM',
    appId: '1:530548654573:android:a4e661d50b0c797c7f27e4',
    messagingSenderId: '530548654573',
    projectId: 'fir-flutter-sos-home',
    storageBucket: 'fir-flutter-sos-home.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA4BuGkwMsfr1iJLHkiILZc_Dg0daCJ6OM',
    appId: '1:530548654573:ios:3d87d720c05490327f27e4',
    messagingSenderId: '530548654573',
    projectId: 'fir-flutter-sos-home',
    storageBucket: 'fir-flutter-sos-home.appspot.com',
    androidClientId: '530548654573-9bp10q73e57imu7n98cab96ji989s04g.apps.googleusercontent.com',
    iosClientId: '530548654573-ds5ll6o3eerdfsv8280sq1kdchmmob3t.apps.googleusercontent.com',
    iosBundleId: 'com.example.firstapp',
  );
}