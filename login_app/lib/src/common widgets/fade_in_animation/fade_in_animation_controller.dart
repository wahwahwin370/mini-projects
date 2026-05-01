import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/authentication/screens/on_boarding/on_boarding_screen.dart';
import '../../features/authentication/screens/welcome/welcome_screen.dart';

class FadeInAnimationController extends GetxController{

  static FadeInAnimationController get find => Get.find();

  RxBool animate = false.obs;

  //for splash screen
  Future<void> startSplashAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(Duration(milliseconds: 2000));
    Get.offAll(() => OnBoardingScreen());
  }


  Future<void> startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
  }


}