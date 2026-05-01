import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/models/user_model.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:login_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:login_app/src/repository/user_repository/user_repository.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();   // Singleton instance to access this controller

  //TextField Controller to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());

  void registerUser(String email, String password){
    //// Call the method to create a user with email and password from the AuthenticationRepository
    String? error = AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password) as String?;
    if(error != null){
      Get.showSnackbar(GetSnackBar(message:error.toString()));
    }
  }

  //create user (for database)
  Future<void> createUser(UserModel user) async {
    phoneAuthentication(user.phoneNo);
    Get.to(()=> OTPScreen());
    await userRepo.createUser(user);
  }


  // Get PhoneNo from user and pass it to Auth Repository for Firebase Authentication(test for phone number)
  void phoneAuthentication(String phoneNo){
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}