import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';

import '../../../../common widgets/form/form_header_widget.dart';
import 'signup_footer_widget.dart';
import 'singup_form_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding:  EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // section1
                FormHeaderWidget(
                  image:tWelcomeScreenImage,
                  title : tSignUpTitle,
                  subTitle : tSignUpSubTitle
                ),
                // section 2
                SignUpFormWidget(),

                // section3
                SignUpFooterWidget()
              ],
            ) ,
          ),
        ),
      ),
    );
  }
}




