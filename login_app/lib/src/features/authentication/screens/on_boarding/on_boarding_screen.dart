import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:login_app/src/features/authentication/models/on_boarding_model.dart';
import 'package:login_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'on_boading_page_widget.dart';

class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({Key? key}) : super(key:key);


  @override
  Widget build(BuildContext context) {


    final onBoardingController=OnBoardingController();


    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
              pages: onBoardingController.pages,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
              liquidController: onBoardingController.controller,
            onPageChangeCallback: onBoardingController.onPageChangedCallback,
          ),
          Positioned(
            bottom: 80,
              child: OutlinedButton(
                onPressed: ()=> onBoardingController.animateToNextSlide(),
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color:Colors.black26,),
                    padding: EdgeInsets.all(10),
                    backgroundColor: Colors.black26,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100 ), // Set your desired radius here
                    ),
                ),
                child:Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Color(0xff272727),
                      shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.arrow_forward_ios, color: Colors.white,),
                ) ,
              )
          ),
          Positioned(
            top: 40,
              right: 10,
              child: TextButton(
               // onPressed: ()=>
                   // onBoardingController.skip(),
                onPressed: (){
                  Get.to(() => WelcomeScreen());
                },

                child: const Text("skip", style: TextStyle(
                  color: Colors.green
                ),),
              )
          ),
          Obx(
              ()=> Positioned(
              bottom: 20,
                child: AnimatedSmoothIndicator(
                  count: 3,
                  activeIndex: onBoardingController.currentPage.value,
                  effect: const WormEffect(
                    activeDotColor: Colors.redAccent,
                    dotColor: Colors.orange,
                    dotHeight: 5
                  ),
                )
            ),
          )
        ],
      ),
    );
  }


}


