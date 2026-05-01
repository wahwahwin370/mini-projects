import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/models/user_model.dart';
import 'package:login_app/src/repository/user_repository/user_repository.dart';

import '../../../repository/authentication_repository/authentication_repository.dart';
class ProfileController extends GetxController{
  static ProfileController get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());


  //step 3 for fetch user
  getUserData(){
    final email = _authRepo.firebaseUser.value?.email;
    if(email != null){
     // return _userRepo.getUserDetails(email);
    }else{
      Get.snackbar('Error', "Login to Continue");
    }
  }





}