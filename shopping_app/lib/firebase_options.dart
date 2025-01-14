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
    apiKey: 'AIzaSyBH5zwhZAKubn5tB33V3mN73Pg512Yehno',
    appId: '1:6157017212:web:16c3066153dd99000929f9',
    messagingSenderId: '6157017212',
    projectId: 'e-shopping-app-1ddd8',
    authDomain: 'e-shopping-app-1ddd8.firebaseapp.com',
    storageBucket: 'e-shopping-app-1ddd8.appspot.com',
    measurementId: 'G-8FRYTZR7WN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC7s-0jYlC2ZYvmzuwXwLknZAs_9ecYuFs',
    appId: '1:6157017212:android:2a41b41f2e87fb370929f9',
    messagingSenderId: '6157017212',
    projectId: 'e-shopping-app-1ddd8',
    storageBucket: 'e-shopping-app-1ddd8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDKVU7fC7ZJ9ZjKvKNzCoZo7Z-RXDTQ3Kg',
    appId: '1:6157017212:ios:b79e0509769692920929f9',
    messagingSenderId: '6157017212',
    projectId: 'e-shopping-app-1ddd8',
    storageBucket: 'e-shopping-app-1ddd8.appspot.com',
    androidClientId: '6157017212-9jn4gt8cn2suefsupi7glk82b306qini.apps.googleusercontent.com',
    iosClientId: '6157017212-40kr5323v2vcvbuj0tcmrj8j6i2a4jb5.apps.googleusercontent.com',
    iosBundleId: 'com.example.shoppingApp',
  );
}
