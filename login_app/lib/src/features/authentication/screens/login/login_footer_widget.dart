import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/signup_screen/signup_screen.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("Or"),
        const SizedBox(height: tFormHeight -10,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Container(
                  width: 20,
                  child: Image(image: AssetImage(tGoogleLogoImage),)
              ),
              onPressed: null,
              label: Text(tSignInWidthGoogle,)
          ),
        ),
        const SizedBox(height: tFormHeight -10,),
        TextButton(
            onPressed: (){
              Get.to( ()=> const SignupScreen());
            },
            child: Text.rich(
                TextSpan(
                    text: tDontHaveAnAccout,
                    style: Theme.of(context).textTheme.bodySmall,
                    children: [
                      TextSpan(
                          text: tSignup,
                          style: TextStyle(color: Colors.blueAccent)
                      )
                    ]
                )

            )
        )
      ],
    );
  }
}

