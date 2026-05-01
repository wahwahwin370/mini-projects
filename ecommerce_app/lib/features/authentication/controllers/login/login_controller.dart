import 'package:ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:ecommerce_app/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../data/services/network_manager.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../personalization/controllers/user_controller.dart';

class LoginController extends GetxController{

  //variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  final userController = Get.put(UserController()); //instance

  @override
  void onInit(){
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
  }

  //email and password sign in
  Future<void> emailAndPasswordSignIn() async {
    try{

      //1-check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        TFullScreenLoader.stopLoading();
        return ;
      }

      //2-form validation
      if(!loginFormKey.currentState!.validate()) return;

      //3-Save Data if Remember Me is selected
      if(rememberMe.value){
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      //4-start loading
      TFullScreenLoader.openLoadingDialog('Loading you in...', TImages.loadingJson);


      //5-Login user using Email & password Authentication
      final userCredentials = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      //6-Remove loader
      TFullScreenLoader.stopLoading();

      //7-Redirect
      AuthenticationRepository.instance.screenRedirect();

    }catch (e){
      TFullScreenLoader.stopLoading();
      TLoader.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }


  //google sing in authentication
  Future<void> googleSignIn() async{
    try{
      //start loading
      TFullScreenLoader.openLoadingDialog('Logging you in', TImages.loadingJson);

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        TFullScreenLoader.stopLoading();
        return;
      }

      //Google Authentication
      final userCredentials = await AuthenticationRepository.instance.signInWithGoogle();

      //save user record
      await userController.saveUserRecord(userCredentials);

      // //start loading
      // TFullScreenLoader.openLoadingDialog('Logging you in', TImages.loadingJson);

      //remote loader
      TFullScreenLoader.stopLoading();

      //redirect
      AuthenticationRepository.instance.screenRedirect();


    }catch (e){
      TLoader.errorSnackBar(title: "Oh Snap", message: e.toString());
      TFullScreenLoader.stopLoading();
    }
  }
}