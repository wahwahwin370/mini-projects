import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/core/screens/dashboard/dashboard.dart';

import '../../../repository/authentication_repository/authentication_repository.dart';
import 'signup_conntroller.dart';

class OtpController extends GetxController{
  static OtpController get instance => Get.find();

  void verifyOtp(String otp) async{
    var isVerified = await AuthenticationRepository.instance.verifyOtp(otp);
    isVerified ? Get.offAll(Dashboard()) : Get.back();
  }
}