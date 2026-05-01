import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/signup_form.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //---title
              Text(TTexts.singUpTitle,style:Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //--form
              const SignUpForm(),
              const SizedBox(height: TSizes.spaceBtwSections,),

              ///--Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              ///---footer
              const TSocialButton(),
              const SizedBox(height: TSizes.spaceBtwSections,),
            ],
          ),
        ),
      ),
    );
  }
}


