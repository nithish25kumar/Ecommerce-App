// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCWkfl7pfHD-8gjXE0jpwgtuj70LmRRSxM',
    appId: '1:1054139636532:web:b41e8e509455d8bb05e361',
    messagingSenderId: '1054139636532',
    projectId: 'ecommerce-250025',
    authDomain: 'ecommerce-250025.firebaseapp.com',
    storageBucket: 'ecommerce-250025.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCnhnxKNdRjwvmHMAPYrPIgEWqUV5x58mA',
    appId: '1:1054139636532:android:04dd3343f0b80d2605e361',
    messagingSenderId: '1054139636532',
    projectId: 'ecommerce-250025',
    storageBucket: 'ecommerce-250025.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBq9T_7FwJnh6BXuUSYgZNNrpRsboWE_5Q',
    appId: '1:1054139636532:ios:32a6b8faacb5d11605e361',
    messagingSenderId: '1054139636532',
    projectId: 'ecommerce-250025',
    storageBucket: 'ecommerce-250025.firebasestorage.app',
    iosBundleId: 'com.example.ecommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBq9T_7FwJnh6BXuUSYgZNNrpRsboWE_5Q',
    appId: '1:1054139636532:ios:32a6b8faacb5d11605e361',
    messagingSenderId: '1054139636532',
    projectId: 'ecommerce-250025',
    storageBucket: 'ecommerce-250025.firebasestorage.app',
    iosBundleId: 'com.example.ecommerce',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCWkfl7pfHD-8gjXE0jpwgtuj70LmRRSxM',
    appId: '1:1054139636532:web:09aa26620cbfa68805e361',
    messagingSenderId: '1054139636532',
    projectId: 'ecommerce-250025',
    authDomain: 'ecommerce-250025.firebaseapp.com',
    storageBucket: 'ecommerce-250025.firebasestorage.app',
  );
}