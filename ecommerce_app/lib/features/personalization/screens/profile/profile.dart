import 'package:ecommerce_app/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce_app/common/widgets/loaders/shimmer_loader.dart';
import 'package:ecommerce_app/common/widgets/texts/heading_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../controllers/user_controller.dart';
import 'widgets/change_name.dart';
import 'widgets/profile_menu.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: const TAppBar(showBackArrow : true ,title : Text('Profile')),
      
      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //SizeBox
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Obx(() {
                         final networkImage = controller.user.value.profilePicture;
                         final image = networkImage.isNotEmpty ? networkImage : TImages.user;
                           return  controller.imageUploading.value
                             ? const TShimmerEffect(width: 80, height: 80, radius: 80,)
                             : TCircularImage(image: image, width : 80, height : 80,isNetworkImage: networkImage.isNotEmpty,);
                       }
                     ),
                    TextButton( child : const Text('Change Profile Profile'),onPressed : ()=> controller.uploadUserProfilePicture(),),
                  ],
                ),
              ),

              // -- Details
              const SizedBox(height: TSizes.spaceBtwItems/2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              //--heading personal info
              const TSectionHeading(title: 'Profile Information', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(title: 'Name', value: controller.user.value.fullName,onPressed: () => Get.to(()=> const ChangeName()), ),
              TProfileMenu(title: 'Username', value: controller.user.value.userName,onPressed: () {  },),

              const SizedBox(height: TSizes.spaceBtwItems/2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              //--heading personal info
              const TSectionHeading(title: 'Profile Information', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu( title: 'User ID', value: controller.user.value.id,icon: Iconsax.copy,onPressed: () {  },),
              TProfileMenu( title: 'Email', value: controller.user.value.email,onPressed: () {  },),
              TProfileMenu( title: 'Phone', value: controller.user.value.phoneNumber,onPressed: () {  },),
              TProfileMenu( title: 'Gender', value: 'Female',onPressed: () {  },),
              TProfileMenu( title: 'Date of Birth', value: '10 Oct 1999',onPressed: () {  },),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Center(
                child: TextButton(
                  onPressed: ()=>controller.deleteAccountWarningPopup(),
                  child: const Text('Close Account', style: TextStyle(color: Colors.red),),
                ),
              )

            ],
          )
      //    child : TextButton(child: Text('Change Profile Picture'))
        ),
      ),
    );
  }
}
