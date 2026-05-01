import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/features/authentication/models/user_model.dart';
import 'package:login_app/src/features/core/controllers/profile_controller.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';
class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed:
                  (){
                      Navigator.pop(context);
                  }
              ,
              icon: Icon(LineAwesomeIcons.angle_left_solid),
            ),
            title:  Center(child: Text(tEditProfile, style: Theme.of(context).textTheme.headlineMedium,)),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(tDefaultSize),
              //step 4 fetching data from database
              child: FutureBuilder(

                future : controller.getUserData(),
                builder: (context,snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {

                      UserModel userData = snapshot.data as UserModel;
                      return Column( //4-wrap with this widget
                        children: [
                          Stack(
                            children:
                            [
                              SizedBox(
                                width: 120,
                                height: 120,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: const Image(image: AssetImage(tProfileImage),),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: tPrimaryColor
                                  ),
                                  child: Icon(LineAwesomeIcons.camera_solid, color: Colors.black,),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: tDefaultSize,),
                          Form( //links form with _formKey to check
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField( //named parameter = instance of a class . properties
                                  initialValue: userData.fullName,
                                  decoration: InputDecoration(
                                      label: Text(tFullName, style: Theme
                                          .of(context)
                                          .textTheme
                                          .labelMedium,),
                                      prefixIcon: Icon(Icons.person_outline_rounded, size: 20,)
                                  ),
                                ),
                                SizedBox(height: tFormHeight - 20,),
                                TextFormField(
                                  initialValue: userData.email,
                                  decoration: InputDecoration(
                                      label: Text(tEmail, style: Theme
                                          .of(context)
                                          .textTheme
                                          .labelMedium,),
                                      prefixIcon: Icon(Icons.email_outlined, size: 20,)
                                  ),
                                ),
                                SizedBox(height: tFormHeight - 20,),
                                TextFormField(
                                  initialValue: userData.phoneNo,
                                  decoration: InputDecoration(
                                      label: Text(tPhoneNo, style: Theme
                                          .of(context)
                                          .textTheme
                                          .labelMedium,),
                                      prefixIcon: Icon(Icons.numbers, size: 20,)
                                  ),
                                ),
                                SizedBox(height: tFormHeight - 20,),
                                TextFormField(
                                  initialValue: userData.password,
                                  decoration: InputDecoration(
                                      label: Text(tPassword, style: Theme
                                          .of(context)
                                          .textTheme
                                          .labelMedium,),
                                      prefixIcon: Icon(Icons.fingerprint, size: 20,)
                                  ),
                                ),
                                SizedBox(height: tFormHeight - 10,),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () =>
                                        Get.to(() => UpdateProfileScreen()),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: tPrimaryColor,
                                        side: BorderSide.none,
                                        shape: StadiumBorder()

                                    ),
                                    child: Text(tEditProfile.toUpperCase()),
                                  ),
                                ),
                                SizedBox(height: tFormHeight,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text.rich(
                                        TextSpan(
                                            text: tJoined,
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .bodySmall,
                                            children: [
                                              TextSpan(
                                                  text: tJoinedAt,
                                                  style: Theme
                                                      .of(context)
                                                      .textTheme
                                                      .bodySmall
                                              )
                                            ]
                                        )
                                    ),
                                    ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(backgroundColor: tPrimaryColor.withOpacity(0.2),
                                            elevation: 0,
                                            foregroundColor: Colors.red,
                                            shape: const StadiumBorder(),
                                            side: BorderSide.none
                                        ),
                                        child: Text(tDelete)

                                    )
                                  ],
                                )

                              ],
                            ),
                          ),
                        ],
                      );
                    } else if (snapshot.hasError) {
                      return Center(child: Text(snapshot.error.toString()),);
                    }
                    else {
                      return const Text('Something went wrong;');
                    }
                  }else{
                    return CircularProgressIndicator();
                  }
                },
              )
            ),
          ),
        )
    );
  }
}
