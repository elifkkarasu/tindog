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
    apiKey: 'AIzaSyD1nff70Cymbw136sUqHV6YHYYJ-X1GE0I',
    appId: '1:556449440914:web:a339f32b60f0f3282ff24b',
    messagingSenderId: '556449440914',
    projectId: 'ilkapp-5536a',
    authDomain: 'ilkapp-5536a.firebaseapp.com',
    storageBucket: 'ilkapp-5536a.appspot.com',
    measurementId: 'G-0DSPJMCQVH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBzEWz7OdkG0hkklSVLJMKN8shdysQnkv4',
    appId: '1:556449440914:android:b0b2616d62c82c432ff24b',
    messagingSenderId: '556449440914',
    projectId: 'ilkapp-5536a',
    storageBucket: 'ilkapp-5536a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDsz7RjMnIBzZsa9BIL1zs_X4uuwDEbm7Y',
    appId: '1:556449440914:ios:24e4d582017776662ff24b',
    messagingSenderId: '556449440914',
    projectId: 'ilkapp-5536a',
    storageBucket: 'ilkapp-5536a.appspot.com',
    iosClientId:
        '556449440914-5tgdo7c9q7kmm31c29kd5dq977rl90id.apps.googleusercontent.com',
    iosBundleId: 'com.forschool.tindog',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDsz7RjMnIBzZsa9BIL1zs_X4uuwDEbm7Y',
    appId: '1:556449440914:ios:24e4d582017776662ff24b',
    messagingSenderId: '556449440914',
    projectId: 'ilkapp-5536a',
    storageBucket: 'ilkapp-5536a.appspot.com',
    iosClientId:
        '556449440914-5tgdo7c9q7kmm31c29kd5dq977rl90id.apps.googleusercontent.com',
    iosBundleId: 'com.forschool.tindog',
  );
}
