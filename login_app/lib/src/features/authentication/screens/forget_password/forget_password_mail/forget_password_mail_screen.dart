import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/login/login_footer_widget.dart';

import '../../../../../common widgets/form/form_header_widget.dart';
import '../../login/login_form_widget.dart';
import '../forget_password_otp/otp_screen.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tForgetPassword,
                  subTitle : tForgetPasswordSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30,
                  textAlign: TextAlign.center, //it doesn't work
                ),
               SizedBox(height: tFormHeight,),
               Form(
                   child: Column(
                     children: [
                        TextFormField(
                                 decoration: InputDecoration(
                                 label: Text(tEmail, style: Theme.of(context).textTheme.labelMedium,),
                                 prefixIcon: Icon(Icons.mail_outline_rounded,size: 20,)
                             ),
                        ),
                       SizedBox(height: tDefaultSize-10,),
                       SizedBox(
                         width: double.infinity,
                         child: ElevatedButton(
                           onPressed: (){
                             Get.to( ()=> const OTPScreen());
                           },
                           child: Text(tNext.toUpperCase()),
                         ),
                       )

                     ],
                   )
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
