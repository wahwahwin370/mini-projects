import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../controllers/signup_conntroller.dart';
import '../../models/user_model.dart';
class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {



    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>(); // GlobalKey allows to access the state of that widget from outside
          //FormState contains methods and properties ( like validating inputs and saving form data )


    return Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight -10),
      child: Form(
        key: _formKey,  //links form with _formKey to check
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName, //named parameter = instance of a class . properties
              decoration: InputDecoration(
                  label: Text(tFullName, style: Theme.of(context).textTheme.labelMedium,),
                  prefixIcon: Icon(Icons.person_outline_rounded,size: 20,)
              ),
            ),
            SizedBox(height: tFormHeight -20,),
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                  label: Text(tEmail, style: Theme.of(context).textTheme.labelMedium,),
                  prefixIcon: Icon(Icons.email_outlined,size: 20,)
              ),
            ),
            SizedBox(height: tFormHeight -20,),
            TextFormField(
              controller: controller.phoneNo,
              decoration: InputDecoration(
                  label: Text(tPhoneNo, style: Theme.of(context).textTheme.labelMedium,),
                  prefixIcon: Icon(Icons.numbers,size: 20,)
              ),
            ),
            SizedBox(height: tFormHeight -20,),
            TextFormField(
              controller: controller.password,
              decoration: InputDecoration(
                  label: Text(tPassword, style: Theme.of(context).textTheme.labelMedium,),
                  prefixIcon: Icon(Icons.fingerprint,size: 20,)
              ),
            ),
            SizedBox(height: tFormHeight -10,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    //if the form is valid using the form key
                    //1-call the registerUser method and Pass the trimmed email and password (email auth testing)
                    //SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());

                    //2-phone authentication testing
                    // SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());
                    // Get.to(()=> const OTPScreen());

                    // =====
                    // Todo : Step - 3 [ Get User and pass it to Controller ]
                    // =====

                    // If the form is valid, create a new UserModel object with the entered values
                    final user = UserModel(
                      email : controller.email.text.trim(),
                      password : controller.password.text.trim(),
                      fullName : controller.fullName.text.trim(),
                      phoneNo : controller.phoneNo.text.trim()
                    );

                    // Call the method to create the user in both Firebase and database
                    controller.createUser(user);

                    // Navigate to OTP screen
                    Get.to(() => OTPScreen());

                   // Get.to(()=> OTPScreen());
                  }
                },
                child: Text(tSignup.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}