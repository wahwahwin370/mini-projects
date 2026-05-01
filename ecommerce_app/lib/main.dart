import 'package:ecommerce_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';
import 'data/repositories/authentication/authentication_repository.dart';


Future<void> main() async {
    //1-Add Widgets Binding
    final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

    // 2-init Local Storage
    await GetStorage.init();

    // 3- Await Native Splash
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    // 4- Initialize Firebase
      await Firebase.initializeApp( options: DefaultFirebaseOptions.currentPlatform).then(
          (FirebaseApp value) => Get.put(AuthenticationRepository()),
      );

    // 5- Initialize Authentication
  runApp(const App());
}

