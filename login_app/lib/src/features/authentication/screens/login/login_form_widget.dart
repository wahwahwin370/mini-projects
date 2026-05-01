import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/signup_screen/signup_screen.dart';
import 'package:login_app/src/features/core/screens/dashboard/dashboard.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../../../repository/authentication_repository/authentication_repository.dart';
import '../../controllers/login_controller.dart';
import '../forget_password/forget_password_options/forget_password_btn_widget.dart';
import '../forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Instantiate the LoginController using GetX
    final LoginController controller = Get.put(LoginController());

    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Email TextFormField
            TextFormField(
              decoration: InputDecoration(
                label: Text(tEmail, style: Theme.of(context).textTheme.labelMedium),
                prefixIcon: Icon(Icons.person_outline_outlined, size: 20),
              ),
              onChanged: (value) {
                controller.email.value = value; // Update email value in the controller
              },
            ),
            const SizedBox(height: tFormHeight - 20),

            // Password TextFormField
            TextFormField(
              obscureText: true, // Hide password text
              decoration: InputDecoration(
                label: Text(tPassword, style: Theme.of(context).textTheme.labelMedium),
                prefixIcon: Icon(Icons.fingerprint, size: 20),
                suffixIcon: IconButton(
                  onPressed: null, // Implement password visibility toggle if needed
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
              onChanged: (value) {
                controller.password.value = value; // Update password value in the controller
              },
            ),
            const SizedBox(height: tFormHeight - 20),

            // Forget Password Button
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: Text(tForgetPassword),
              ),
            ),

            // Login Button - Trigger login using GetX controller
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Trigger login via GetX controller
                  controller.login();
                },
                child: Text(tLogin.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
