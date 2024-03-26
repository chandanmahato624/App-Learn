import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_native_splash/flutter_native_splash_web.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shopping_app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shopping_app/data/repositories/authentication_repo.dart';
import 'firebase_options.dart';

/// -- Entry point of the flutter app
Future<void> main() async {
  /// widgets building
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  /// Getx Local Storage
  await GetStorage.init();

  /// Await splash until other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// Initialize Firebase and authentication repo

  // Todo: initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );
  runApp(const App());
}
