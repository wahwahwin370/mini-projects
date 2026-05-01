import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.dark : TColors.light,
        child: Stack(
          children: [
            //Main Large Image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                  child: Center(child: Image(image: AssetImage(TImages.productImage5))),//put png image for convenient in dark or white mode
                )
            ),

            //image slider
            Positioned(
              right: TSizes.defaultSpace,
              left: TSizes.defaultSpace,
              bottom: 40,
              child: SizedBox(
                height: 75,
                child: ListView.separated(
                    separatorBuilder: (_,__) => const SizedBox(width:TSizes.xs),
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (_, index) => TRoundedImage(
                        width: 75,
                        backgroundColor: dark ? TColors.dark : TColors.white,
                        border: Border.all(color: TColors.primaryColor),
                        // padding: EdgeInsets.all(TSizes.xs),
                        imageUrl: TImages.productImage6
                    )
                ),
              ),
            ),

            //--app bar
            const TAppBar(
              showBackArrow: true,
              actions: [TCircularIcon(icon: Iconsax.heart5, color: Colors.red,)],
            )
          ],
        ),

      ),
    );
  }
}