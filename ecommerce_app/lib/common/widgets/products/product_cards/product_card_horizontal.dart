import 'package:ecommerce_app/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/circular_icon.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark? Colors.white.withOpacity(0.07) : TColors.softGrey,
      ),
      child: Row(
        children: [
          //Thumnail
          TRoundedContainer(
            height: 120,
            padding: EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                //Thumnail image
                SizedBox(
                  height: 120,
                  width: 120,
                  child: TRoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true,),
                ),

                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text(
                      '25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),
                    ),
                  ),
                ),
                //favorite
                const Positioned(
                  right: 10,
                  top: 5,
                  child: TCircularIcon(icon: Iconsax.heart5,color: Colors.red,),
                )
              ],
            ),
          ),
          
          //detail
          SizedBox(
            width: 172,
            child:
            Padding(
              padding: EdgeInsets.only(top :TSizes.md, left: TSizes.md, ),
              child:Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  Column(
                    children: [
                      TProductTitleText(title: "Green nike half sleves shirt ", smallSize: true,),
                      SizedBox(height: TSizes.spaceBtwItems / 2,),
                      TBrandTitleWithVerifiedIcon(title: "Nike")
                    ],
                  ),

                   Spacer(),
                
                  Row(
                    mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: TProductPriceText(price: "256.0 ")),

                      Container(
                          decoration: const BoxDecoration(
                              color: TColors.dark,
                              borderRadius:  BorderRadius.only(
                                  topLeft: Radius.circular(TSizes.cardRadiusMd),
                                  bottomRight: Radius.circular(TSizes.productImageRadius)
                              )
                          ),
                          child: const SizedBox(
                            width: TSizes.iconLg * 1.2,
                            height: TSizes.iconLg * 1.2,
                            child: Center(child: Icon(Iconsax.add, color: TColors.white,size: 30 ,),
                            ),
                          )
                      )
                    ],
                  )
                ],
              ),
          )
          )
        ],
      ),
    );
  }
}
