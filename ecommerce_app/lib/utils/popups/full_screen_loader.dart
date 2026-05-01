import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

import '../../common/widgets/loaders/animation_laoder.dart';
import '../constants/colors.dart';

class TFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
          canPop: false, //disable popping with the back button
          child: Center(
            child: Container(
              color: THelperFunctions.isDarkMode(Get.context!) ? TColors.dark : TColors.white,
              width: 250,  // Ensure fixed width
              child: Center(
                //child:Text('loading'),
                child: TAnimationLoaderWidget(text: text, animation: animation),
              ),
            ),
          ),
        ),
      );
    });
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
