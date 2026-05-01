//for product card image
import 'package:flutter/cupertino.dart';

import '../../../utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.border,
    this.padding,
    this.width ,
    this.height ,
    this.fit = BoxFit.contain,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.backgroundColor ,
    this.isNetworkImage = false,
    this.borderRadius = TSizes.md,
    this.onPressed,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration:
        BoxDecoration(border: border, color: backgroundColor, borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
            borderRadius: applyImageRadius ? BorderRadius.circular(TSizes.md) : BorderRadius.zero,
            child: Image(
              fit: fit,
              image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider,
            )),
      ),
    );
  }
}