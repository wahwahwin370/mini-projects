import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';
import '../../profile/profile_screen.dart';
class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget{  ///***need to implements
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.menu, color: Colors.blueAccent,),
      title: Text(tAppName, style: Theme.of(context).textTheme.headlineSmall,),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: tCardBgColor
          ),
          child: IconButton(
            onPressed: (){
              Get.to(ProfileScreen());
            },
            icon: Image(
              image: AssetImage(tProfileIcon),
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55);/////***give height
}