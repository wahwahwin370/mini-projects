import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce_app/common/widgets/texts/heading_section.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/product_cards/product_card_horizontal.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Sports shirts', ),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Banner
              TRoundedImage(imageUrl: TImages.promoBanner1, width: double.infinity,applyImageRadius: true,),
              SizedBox(height: TSizes.spaceBtwSections,),
              
              //Sub Categories
              Column(
                children: [
                  //Heading
                  TSectionHeading(title: 'Sport shirts', onPressed: (){},),
                  SizedBox(height: TSizes.spaceBtwItems / 2,),

                  SizedBox(
                    height: 130,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => SizedBox(width: TSizes.spaceBtwItems), // Correct usage here
                      itemBuilder: (context, index) => TProductCardHorizontal(),
                    ),
                  )

                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
