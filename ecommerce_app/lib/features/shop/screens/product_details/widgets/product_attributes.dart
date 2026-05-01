import 'package:ecommerce_app/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/texts/heading_section.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //--Selected attribute pricing and description
        TRoundedContainer(
          padding : const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(title: 'Variation', showActionButton: false,),
                  const SizedBox(width: TSizes.spaceBtwItems,),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: 'Price : ', smallSize: true,),
                          //actual price
                          Text('\$25', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                          const SizedBox(width: TSizes.spaceBtwItems,),
                          //sale price
                          const TProductPriceText(price: '20')
                        ],
                      ),

                      //stock
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock : ' , smallSize: true,),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      )

                    ],
                  ),

                ],
              ),
              //Variation Description
               const TProductTitleText(
                  title : 'This is the Description of the Product and it can go up to max 4 lines.',
                 smallSize: true,
                 maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        //--Attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors', showActionButton: false,),

            Wrap(
              spacing: 0,
              children: [
                TChoiceChip(text: 'Green', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'MediumVioletRed', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Tomato', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'SpringGreen', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'MidnightBlue', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Orange', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'LightBlue', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'DeepPurple', selected: false, onSelected: (value){},),
              ],
            )
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size', showActionButton: false,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'EU 34', selected: true,onSelected: (value){},),
                TChoiceChip(text: 'EU 36', selected: false,onSelected: (value){},),
                TChoiceChip(text: 'EU 38', selected: false,onSelected: (value){},),
                TChoiceChip(text: 'EU 40', selected: false,onSelected: (value){},),
                TChoiceChip(text: 'EU 42', selected: false,onSelected: (value){},),
                TChoiceChip(text: 'EU 44', selected: false,onSelected: (value){},),
                TChoiceChip(text: 'EU 46', selected: false,onSelected: (value){},),
              ],
            )

          ],
        )
      ],
    );
  }
}


