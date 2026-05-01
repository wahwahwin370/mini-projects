import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/features/core/screens/profile/user_management.dart';
import 'package:login_app/src/repository/authentication_repository/authentication_repository.dart';

import '../../../../constants/text_strings.dart';
import 'profile_menu_widget.dart';
import 'update_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
              },
            icon: Icon(LineAwesomeIcons.angle_left_solid),
          ),
          title:  Text(tProfile, style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            IconButton(
                onPressed: (){

                },
                icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
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
                        child: Icon(LineAwesomeIcons.camera_solid, color :Colors.black,),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Text(tProfileHeading, style: Theme.of(context).textTheme.headlineMedium,),
                Text(tProfileSubHeading, style: Theme.of(context).textTheme.bodyMedium,),
                SizedBox(height: tDefaultSize,),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      onPressed: (){
                        Get.to(()=> UpdateProfileScreen());
                      },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: tPrimaryColor,
                      side: BorderSide.none,
                      shape: StadiumBorder()
                    ),
                      child: Text(tEditProfile,),
                  ),
                ),
                SizedBox(height: tDefaultSize,),
                Divider(),
                SizedBox(height: 10,),

                //Menu
                ProfileMenuWidget(title: "Setting",icon: LineAwesomeIcons.cog_solid, onPress: (){},),
                ProfileMenuWidget(title: "Billing Details",icon: LineAwesomeIcons.wallet_solid, onPress: (){},),
                ProfileMenuWidget(title: "User Management",icon: LineAwesomeIcons.user_check_solid, onPress: (){ Get.to(UserManagementScreen());},),
                Divider(),
                SizedBox(height: 10,),
                ProfileMenuWidget(title: "Information",icon: LineAwesomeIcons.info_solid, onPress: (){},),
                ProfileMenuWidget(title: "Logout", icon: LineAwesomeIcons.sign_out_alt_solid, onPress: (){ AuthenticationRepository.instance.logout();})
              ],
            ),
          ),
        ),
      ),
    );
  }
}


