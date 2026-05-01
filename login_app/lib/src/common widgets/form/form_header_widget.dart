import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.imageColor,
    this.imageHeight= 0.2,
    this.heightBetween,
    this.crossAxisAlignment= CrossAxisAlignment.start,
    this.textAlign
  });

  //var for login screen
  final String image, title, subTitle;

  //var for forget password too
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign; ////it doesn't work

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image(image: AssetImage(image),height: size.height * 0.2,),
        SizedBox(height: heightBetween,),
        Align(
          alignment: Alignment.centerLeft, // Align to the left
          child: Text(title, style: Theme.of(context).textTheme.headlineLarge,),
        ),
        Text(subTitle, style: Theme.of(context).textTheme.bodyLarge,),
      ],
    );
  }
}