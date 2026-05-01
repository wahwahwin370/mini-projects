
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../forget_password_mail/forget_password_mail_screen.dart';
import '../forget_password_phone/forget_password_phone_screen.dart';
import 'forget_password_btn_widget.dart';
class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        builder: (context) =>
            Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tForgetPasswordTitle, style: Theme
                      .of(context)
                      .textTheme
                      .headlineMedium,),
                  Text(tForgetPasswordSubTitle, style: Theme
                      .of(context)
                      .textTheme
                      .bodyMedium,),
                  SizedBox(height: 30,),
                  ForgetPasswordButtonWidget(
                    btnIcon: Icons.email_rounded,
                    title: tEmail,
                    subTitle: tResetViaEMail,
                    onTap: () {
                      Navigator.pop(context); //close the bottom sheet
                      Get.to(()=> ForgetPasswordMailScreen());
                    },
                  ),
                  SizedBox(height: 20.0,),
                  ForgetPasswordButtonWidget(
                    btnIcon: Icons.phone_android_rounded,
                    title: tPhoneNo,
                    subTitle: tResetViaPhone,
                    onTap: () {
                      Navigator.pop(context); //close the bottom sheet
                      Get.to(()=> ForgetPasswordPhoneScreen());
                    },
                  ),
                ],
              ),
            )
    );
  }
}