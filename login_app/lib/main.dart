import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/firebase_options.dart';
import 'package:login_app/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:login_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:login_app/src/utils/theme/theme.dart';

import 'src/common widgets/fade_in_animation/fade_in_animation_controller.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,//default theme
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,  //if we set system theme will depend to the system mode
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
      home: SplashScreen(),
    );
  }
}
