import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/authentication/models/user_model.dart';

// ====
// Todo : Step - 2 [User Repository to perform Database Operations]
// ====

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) async {
    await _db.collection("Users").add(user.toJson()).whenComplete(
            () {
          Get.snackbar("Success", "You account has neen created.",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.greenAccent.withOpacity(0.2),
              colorText: Colors.green
          );
        }).catchError((error, stackTrace){
      Get.snackbar("Error", "Something went wrong. Try again",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red.withOpacity(0.2),
        colorText: Colors.red,
      );
      print(error.toString());
    }
    ) ;
  }


}