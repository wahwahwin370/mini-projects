import 'package:ecommerce_app/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =  THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_,__) =>SizedBox(height: TSizes.spaceBtwItems,),
      itemBuilder: (_,index) => TRoundedContainer(
        showBorder: true,
        padding: EdgeInsets.all(TSizes.md),
        backgroundColor:dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                //-1-icon
                Icon(Iconsax.ship),
                SizedBox(width: TSizes.spaceBtwItems / 2,),

                //-2-status and date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing' , style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primaryColor, fontWeightDelta: 1),),
                      Text('07 Nov 2024', style: Theme.of(context).textTheme.headlineSmall,)
                    ],
                  ),
                ),

                // 3-Icon
                IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34, size: TSizes.iconSm,))
              ],
            ),
            SizedBox(height: TSizes.spaceBtwItems ,),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //-1-icon
                      Icon(Iconsax.tag),
                      SizedBox(width: TSizes.spaceBtwItems / 2,),

                      //-2-status and date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order' , style: Theme.of(context).textTheme.labelMedium,),
                            Text('[#256f2]', style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      //-1-icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: TSizes.spaceBtwItems / 2,),

                      //-2-status and date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date' , style: Theme.of(context).textTheme.labelMedium,),
                            Text('03 Feb 2025', style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
