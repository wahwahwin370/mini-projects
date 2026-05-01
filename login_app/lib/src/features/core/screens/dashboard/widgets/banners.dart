import 'package:flutter/material.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
class DashboardBanners extends StatelessWidget {
  const DashboardBanners({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Theme.of(context).cardColor),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(child: Image(image: AssetImage(tBallIcon,),width: 20,)),
                    Flexible(child: Image(image: AssetImage(tGroupIcon),width: 60,))
                  ],
                ),
                SizedBox(height: tButtonHeight,),
                Text(tDashboardBannerTitle1,style: txtTheme.headlineSmall, maxLines: 2,overflow: TextOverflow.ellipsis,),
                Text(tDashboardBannerSubTitle,style: txtTheme.bodySmall, maxLines: 2,overflow: TextOverflow.ellipsis,)
              ],
            ),
          ),
        ),
        SizedBox(width: 10,),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Theme.of(context).cardColor),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Image(image: AssetImage(tBallIcon),width: 20,)),
                        Flexible(child: Image(image: AssetImage(tGroupIcon),width: 60,))
                      ],
                    ),
                    Text(tDashboardBannerTitle2,style: txtTheme.headlineSmall, maxLines: 2,overflow: TextOverflow.ellipsis,),
                    Text(tDashboardBannerSubTitle,style: txtTheme.bodySmall, maxLines: 2,overflow: TextOverflow.ellipsis,)
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(tDashboardButton),
                ),
              ),
            ],
          ),


        ),
      ],
    );
  }
}