import 'package:ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/services/network_manager.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../../utils/popups/loaders.dart';

class ForgetPasswordController extends GetxController{
  static ForgetPasswordController get instance => Get.find();

  //variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  //Send Reset Password Email
  sendPasswordResetEmail() async {
    try {
      //start loading
      TFullScreenLoader.openLoadingDialog('Logging you in', TImages.loadingJson);

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        TFullScreenLoader.stopLoading();
        return;
      }

      //Form Validation
      if(!forgetPasswordFormKey.currentState!.validate()){
        TFullScreenLoader.stopLoading();
        return;
      }

      //send Email to reset password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email.text.trim());

      //Remove loader
      TFullScreenLoader.stopLoading();

      //Show Success Screen
      TLoader.successSnackBar(title: 'Email Sent', message: 'Email Link sent to reset your password');

      //Redirect
      Get.to(() => ResetPasswordScreen(email:email.text.trim()));

    } catch (e) {
      //remove loader
      TFullScreenLoader.stopLoading();
      TLoader.errorSnackBar(title: "Oh Snap", message: e.toString());
    }
  }


  //resent password reset email
  resendPasswordResetEmail(String email) async{
    try {
      //start loading
      TFullScreenLoader.openLoadingDialog('Logging you in', TImages.loadingJson);

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        TFullScreenLoader.stopLoading();
        return;
      }

      //send Email to reset password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      //Remove loader
      TFullScreenLoader.stopLoading();

      //Show Success Screen
      TLoader.successSnackBar(title: 'Email Sent', message: 'Email Link sent to reset your password'.tr);

    } catch (e) {
      //remove loader
      TFullScreenLoader.stopLoading();
      TLoader.errorSnackBar(title: "Oh Snap", message: e.toString());
    }
  }
}