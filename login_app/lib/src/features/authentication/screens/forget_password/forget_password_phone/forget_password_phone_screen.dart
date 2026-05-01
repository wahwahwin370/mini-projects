import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';

import '../../../../../common widgets/form/form_header_widget.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({super.key});

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
                              label: Text(tPhoneNo, style: Theme.of(context).textTheme.labelMedium,),
                              prefixIcon: Icon(Icons.phone_iphone,size: 20,)
                          ),
                        ),
                        SizedBox(height: tDefaultSize-10,),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (){

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
