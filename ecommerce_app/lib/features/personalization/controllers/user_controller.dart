import 'package:ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce_app/data/repositories/user/user_repository.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/widgets/re_authenticate_user_login_form.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:ecommerce_app/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';

import '../../../data/services/network_manager.dart';
import '../../../utils/constants/image_strings.dart';
import '../../authentication/models/user/user_model.dart';
import '../../authentication/screens/login/login.dart';
import '../screens/profile/profile.dart';
class UserController extends GetxController{
  static UserController get instance=> Get.find();

  final userRepository = Get.put(UserRepository());

  ///for fetching
  Rx<UserModel> user = UserModel.empty().obs;
  final profileLoading = false.obs;

  //for email and password authenticate inside app
  final hidePassword = false.obs;
  final verifyEmail = TextEditingController();
  final verifyPassword = TextEditingController();
  final imageUploading = false.obs; //for profile image
  GlobalKey<FormState> reAuthFormKey = GlobalKey<FormState>();

  //fetch user function
  @override
  void onInit(){
    super.onInit();
    fetchUserRecord();
  }

  ///save user record to firebase database from any registration provider
    Future<void> saveUserRecord(UserCredential? userCredentials) async {
      try{
        //Refresh User Record
        await fetchUserRecord();
        //if no record already sorted.
        if(user.value.id.isEmpty) {
          if (userCredentials != null) {
            //convert name to first and last name
            final nameParts = UserModel.nameParts(userCredentials.user!.displayName ?? '');
            final username = UserModel.generateUsername(userCredentials.user!.displayName ?? '');

            //map data
            final user = UserModel(
                id: userCredentials.user!.uid,
                firstName: nameParts[0],
                lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : ' ',
                userName: username,
                email: userCredentials.user!.email ?? '',
                phoneNumber: userCredentials.user!.phoneNumber ?? '',
                profilePicture: userCredentials.user!.photoURL ?? ''
            );

            //save user data
            await userRepository.saveUserRecord(user);
          }
        }
      }catch (e){
        TLoader.warningSnackBar(title:" Data not Saved", message: "Something went wrong while saving your information. You can re-save your data in your profile.");
      }
    }

    //Fetch User Record
  Future<void> fetchUserRecord() async{
    try{
      profileLoading.value = true;
      final user = await userRepository.fetchUserDetails();
      this.user(user);
    }catch(e){
      user(UserModel.empty());
    }finally{
      profileLoading.value = false;
    }
  }

  //delete account warning popup
  void deleteAccountWarningPopup(){
    Get.defaultDialog(
      contentPadding: const EdgeInsets.all(TSizes.md),
      title : 'Delete Account',
      middleText: 'Are you sure you want to delete your account permanently? This action is not reversible and all of your data will be removed permanently',
      confirm: ElevatedButton(
          onPressed: () async => deleteUserAccount(),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red, side: const BorderSide(color: Colors.red)),
          child: const Padding(padding: EdgeInsets.symmetric(horizontal: TSizes.lg), child : Text('Delete'))
      ),
      cancel: OutlinedButton(
          onPressed: ()=> Navigator.of(Get.overlayContext!).pop(),
          child: const Text('Cancel')
      )
    );
  }

  //delete user account permanently
  void deleteUserAccount() async{
    try{
      TFullScreenLoader.openLoadingDialog('Processing', TImages.loading);

      //First re-authenticate user
      final auth = AuthenticationRepository.instance;
      final provider = auth.authUser!.providerData.map((e)=> e.providerId).first;
      if(provider.isNotEmpty){
        //re verify auth email
        if(provider == 'google.com'){
          await auth.signInWithGoogle();
          await auth.deleteAccount();
          TFullScreenLoader.stopLoading();
          Get.offAll(()=> const LoginScreen());
        }else if(provider == 'password'){
          TFullScreenLoader.stopLoading();
          Get.to(()=> const ReAuthLoginForm());
        }
      }
    }catch(e){
      TFullScreenLoader.stopLoading();
      TLoader.warningSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }


  //re authenticate before deleting
  Future<void> reAuthEmailAndPasswordUser() async {
    try{
      //start loading
      TFullScreenLoader.openLoadingDialog('Processing...', TImages.loading);

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        TFullScreenLoader.stopLoading();
        return;
      }

      // form validation
      if(!reAuthFormKey.currentState!.validate()){
        TFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance.reAuthenticateWithEmailAndPassword(verifyEmail.text.trim(),verifyPassword.text.trim());
      await AuthenticationRepository.instance.deleteAccount();
      TFullScreenLoader.stopLoading();
      Get.offAll(()=> const LoginScreen());

    }
    catch(e){
      TFullScreenLoader.stopLoading();
      TLoader.errorSnackBar(title:'Oh Snap!', message : e.toString());
    }
  }



  uploadUserProfilePicture() async {
    try{
      final image = await ImagePicker().pickImage(source : ImageSource.gallery, imageQuality: 70, maxWidth: 512,maxHeight: 512);
      if(image != null) {
        imageUploading.value = true;
        //upload image
        final imageUrl = await userRepository.uploadImage('/Users/Images/Profile/', image);

        //update user image record
        Map<String, dynamic> json = {'ProfilePicture': imageUrl};
        await userRepository.updateSingleField(json);

        user.value.profilePicture = imageUrl;
        user.refresh();

        TLoader.successSnackBar(title: "Congratulation", message: "Your Profile Image has been updated");
      }
    }catch (e){
      TLoader.successSnackBar(title: "OHSnap", message: "Something went Wrong");
    }
    finally{
      imageUploading.value = false;
    }

  }
}