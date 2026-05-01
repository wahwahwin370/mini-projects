import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/common%20widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_app/src/common%20widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';

import '../../../../common widgets/fade_in_animation/animation_design.dart';
import '../../../../constants/image_strings.dart';
import '../welcome/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {

    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
                TFadeInAnimation(
                  durationInMs: 1600,
                  animate: TAnimatePosition(
                      topBefore: 0, topAfter: 200,leftBefore: 0, leftAfter: 40
                  ),
                  child: Container(
                      width: 250,
                      child: Image(
                        image: AssetImage(tSplashBoyImage),
                        fit: BoxFit.contain,)
                  ),
                ),

                TFadeInAnimation(
                  durationInMs: 2000,
                  animate: TAnimatePosition(
                       topBefore: 0, topAfter: 50,leftBefore: 0, leftAfter: tDefaultSize
                  ),
                  child:
                      AnimatedOpacity(
                        duration: const Duration(milliseconds: 1600),
                        opacity:  1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(tAppName, style: Theme.of(context).textTheme.headlineMedium),
                            Container(
                              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
                              child: Text(
                                tAppTagLine,
                                style: Theme.of(context).textTheme.headlineLarge,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                     ),

                ),

                TFadeInAnimation(
                    durationInMs: 2000,
                    animate: TAnimatePosition(
                        topBefore: 0, topAfter: 200,rightBefore: 0, rightAfter: 40
                    ),
                    child:
                        Container(
                        width: 250,
                          child: Image(
                              image: AssetImage(tSplashGirlImage)
                          )
                      ),

                ),

                TFadeInAnimation(
                    durationInMs: 2000,
                    animate: TAnimatePosition(
                        bottomBefore: 0, bottomAfter: 60,rightBefore: tDefaultSize, rightAfter: 60
                    ),
                    child:
                        Container(
                          width: tSplashContainerSize,
                          height: tSplashContainerSize,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: tPrimaryColor,
                          ),
                        ),

                ),
          ],
        ),
      ),
    );
  }


}


