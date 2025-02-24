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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAwJC3_sLwP6x4Djz6jqqGUtlAv6yIRCw8',
    appId: '1:519406637037:web:b82a2a333bf1516d3f61e4',
    messagingSenderId: '519406637037',
    projectId: 'tiktok-25',
    authDomain: 'tiktok-25.firebaseapp.com',
    storageBucket: 'tiktok-25.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7cWJuhwfY0sEnkDUwdVgSuR8kAvCZ38U',
    appId: '1:519406637037:android:638912927b4658073f61e4',
    messagingSenderId: '519406637037',
    projectId: 'tiktok-25',
    storageBucket: 'tiktok-25.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDU69ewyRSrhmR5OirYMW1EdkTrC_BABIY',
    appId: '1:519406637037:ios:7488dfafcef7b0b03f61e4',
    messagingSenderId: '519406637037',
    projectId: 'tiktok-25',
    storageBucket: 'tiktok-25.firebasestorage.app',
    iosBundleId: 'com.wozlsla.tiktok',
  );

}