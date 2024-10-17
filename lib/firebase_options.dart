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
    apiKey: 'AIzaSyDK3F1jKueuC2HoksUU-_5FYYm_3NmVv7w',
    appId: '1:839261323863:web:044d3a6e5851644a00d912',
    messagingSenderId: '839261323863',
    projectId: 'ui-upload-eb738',
    authDomain: 'ui-upload-eb738.firebaseapp.com',
    storageBucket: 'ui-upload-eb738.appspot.com',
    measurementId: 'G-552VQKF39Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDHqqyEB7Hl3UDvJp-E3OZvmGUgL3hfPeQ',
    appId: '1:839261323863:android:91a732ce0e12e2fa00d912',
    messagingSenderId: '839261323863',
    projectId: 'ui-upload-eb738',
    storageBucket: 'ui-upload-eb738.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDurbtkqb2oV8t16JzgddY5vYqv_wpfR78',
    appId: '1:839261323863:ios:66f4c45860fbc01500d912',
    messagingSenderId: '839261323863',
    projectId: 'ui-upload-eb738',
    storageBucket: 'ui-upload-eb738.appspot.com',
    iosBundleId: 'com.example.newImageUploadApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDurbtkqb2oV8t16JzgddY5vYqv_wpfR78',
    appId: '1:839261323863:ios:66f4c45860fbc01500d912',
    messagingSenderId: '839261323863',
    projectId: 'ui-upload-eb738',
    storageBucket: 'ui-upload-eb738.appspot.com',
    iosBundleId: 'com.example.newImageUploadApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDK3F1jKueuC2HoksUU-_5FYYm_3NmVv7w',
    appId: '1:839261323863:web:ac6e6d3c081fcffe00d912',
    messagingSenderId: '839261323863',
    projectId: 'ui-upload-eb738',
    authDomain: 'ui-upload-eb738.firebaseapp.com',
    storageBucket: 'ui-upload-eb738.appspot.com',
    measurementId: 'G-DRV1HLHK97',
  );
}
