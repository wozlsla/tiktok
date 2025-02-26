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
    apiKey: 'AIzaSyBGKaEzyazMG3uNAdoz-sHIyFuqWwZTYmo',
    appId: '1:307630928361:web:a9953d400e0ce3edf35b78',
    messagingSenderId: '307630928361',
    projectId: 'tiktok-app-25',
    authDomain: 'tiktok-app-25.firebaseapp.com',
    storageBucket: 'tiktok-app-25.firebasestorage.app',
    measurementId: 'G-7T9L69YYV1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDAEP4MxCl8VhvIOg3Ntb0JreIbY8pVeYM',
    appId: '1:307630928361:android:d86155ff8fe6d7dff35b78',
    messagingSenderId: '307630928361',
    projectId: 'tiktok-app-25',
    storageBucket: 'tiktok-app-25.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDs5znpwm1bL2newMkEWSH6nHvn5LT6Ov8',
    appId: '1:307630928361:ios:bfae587a5bf063d7f35b78',
    messagingSenderId: '307630928361',
    projectId: 'tiktok-app-25',
    storageBucket: 'tiktok-app-25.firebasestorage.app',
    iosBundleId: 'com.wozlsla.tiktok',
  );

}