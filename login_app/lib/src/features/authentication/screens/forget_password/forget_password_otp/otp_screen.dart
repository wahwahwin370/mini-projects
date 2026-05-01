import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/features/authentication/controllers/otp_controller.dart';

import '../../../../../constants/text_strings.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var otpController = Get.put(OtpController());
    String otp = ''; // To store the OTP entered by the user

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                tOptTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                tOtpSubTitle.toUpperCase(),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: tDefaultSize),
              Text(
                "$tOtpMessage support@codingwitht.com",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: tDefaultSize),
              OtpTextField(
                mainAxisAlignment: MainAxisAlignment.center,
                numberOfFields: 6,
                fillColor: Colors.grey.withOpacity(0.1),
                filled: true,
                onSubmit: (code) {
                  otp = code; // Capture the OTP entered by the user
                  otpController.verifyOtp(otp); // Call verifyOtp method to validate OTP
                },
              ),
              SizedBox(height: tDefaultSize),
              // Optional: Show loading indicator while verifying OTP

              SizedBox(height: tDefaultSize),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (otp.isNotEmpty  ) {
                      otpController.verifyOtp(otp); // Trigger OTP verification
                    } else {
                      Get.snackbar('Error', 'Please enter the OTP');
                    }
                  },
                  child: Text(tNext.toUpperCase()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
