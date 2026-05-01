import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../login/login_screen.dart';
class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
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
              Get.to( ()=> const LoginScreen());
            },
            child: Text.rich(
                TextSpan(
                    text: tAlreadyHaveAccount,
                    style: Theme.of(context).textTheme.bodySmall,
                    children: [
                      TextSpan(
                          text: tLogin,
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