import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/common%20widgets/fade_in_animation/animation_design.dart';
import 'package:login_app/src/common%20widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_app/src/features/authentication/screens/signup_screen/signup_screen.dart';

import '../../../../common widgets/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../constants/sizes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var height = MediaQuery.of(context).size.height;
    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness ==Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor :tPrimaryColor,
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1200,
            animate: TAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              topBefore: 0,
              topAfter: 0,
              leftAfter: 0,
              leftBefore: 0,
              rightAfter: 0,
              rightBefore: 0
            ),
            child: Container(
              padding: EdgeInsets.all(tDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage(tWelcomeScreenImage),height: height * 0.5,),
                  Column(
                    children: [
                      Text(tWelcomeTitle, style: Theme.of(context).textTheme.headlineSmall,),
                      SizedBox(height: 10,),
                      Text(tWelcomeSubTitle, style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
                    ],
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                            onPressed: (){
                              Get.to( ()=> const LoginScreen());
                            },
                            child: Text(tLogin.toUpperCase()),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: (){
                            Get.to( ()=> const SignupScreen());
                          },
                          child: Text(tSignup.toUpperCase()),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}
