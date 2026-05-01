import 'package:flutter/material.dart';
import 'package:login_app/src/constants/sizes.dart';

import '../../models/on_boarding_model.dart';

class onBoardingPageWidget extends StatelessWidget {
  const onBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage( model.image), height: size.height * 0.3,), //height of image
            Column(
              children: [
                Text(model.title, style: Theme.of(context).textTheme.headlineSmall,),
                SizedBox(height: 10,),
                Text(model.subTitle, textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium,),
              ],
            ),
            Text(model.counterText, style: Theme.of(context).textTheme.headlineSmall,),
            SizedBox(height: 50,)
          ]
      ),
    );
  }
}