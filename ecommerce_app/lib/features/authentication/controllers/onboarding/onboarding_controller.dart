import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../screens/login/login.dart';

class OnBoardingController extends GetxController{

  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update current index when page scrolls
  void updatePageIndicator(int index) {
    currentPageIndex.value = index; // Use .value to update Rx<int>
  }

  /// Jump to the specific page when dot is clicked
  void dotNavigationClick(int index) {
    currentPageIndex.value = index; // Update the value
    pageController.jumpToPage(index); // Navigate to the selected page
  }

  /// Update current index & jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();//---for storage

      if(kDebugMode){
        print ('=========Get Storage ==========');
        print(storage.read('IsFirstTime'));
      }

      storage.write('IsFirstTime',false);//---for storage

      if(kDebugMode){
        print ('=========Get Storage ==========');
        print(storage.read('IsFirstTime'));
      }

      Get.offAll(()=>const LoginScreen());
    } else {
      int nextPage = currentPageIndex.value + 1;
      pageController.jumpToPage(nextPage); // Jump to next page
    }
  }

  /// Update current index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2; // Set index to the last page
    pageController.jumpToPage(2); // Jump to the last page
  }
}
