import 'package:ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce_app/data/repositories/user/user_repository.dart';
import 'package:ecommerce_app/features/authentication/screens/sign_up/verify_email.dart';
import 'package:ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/services/network_manager.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/popups/loaders.dart';
import '../../models/user/user_model.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  ///variables
  final hidePassword = true.obs; //obs hide/show password
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  ///--signup
  void signup() async{
    try{


      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if ( !isConnected)  return;

      //form validation
      if(!signupFormKey.currentState!.validate()) return;


      //privacy policy check
      if(!privacyPolicy.value){
        TLoader.warningSnackBar(
            title: 'Accept Privacy Policy',
          message: 'In order to create account, you must have to read and accept the privacy policy and terms of use.'
        );
        return;
      }

      //start loading
      TFullScreenLoader.openLoadingDialog('We are processing your information...', TImages.loadingJson);//loading image error

      //register user in the firebase authentication and save user data in the firebase
      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      //save authenticated user data in the firebase fire store
      final newUser = UserModel(
        id : userCredential.user!.uid,
        firstName : firstName.text.trim(),
        lastName : lastName.text.trim(),
        userName : username.text.trim(),
        email : email.text.trim(),
        phoneNumber : phoneNumber.text.trim(),
        profilePicture : ''
      );

      final userRepository = Get.put(UserRepository());
      userRepository.saveUserRecord(newUser);

      //show success message
      TLoader.successSnackBar(title: 'Congratulations', message: 'Your account has beeb created! Verify email to contain.');

      // move to verity email screen
      Get.to(()=>  VerifyEmailScreen(email : email.text.trim()));

    }
    catch (e){
      //remove loader
      TFullScreenLoader.stopLoading();

      //show some generic error to the user
      TLoader.errorSnackBar(title: 'On Snap!', message: e.toString());

    }
    // finally{
    //   //remove loader
    //   TFullScreenLoader.stopLoading();
    // }
  }


}