import 'package:ecommerce_app/common/widgets/texts/heading_section.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce_app/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../utils/constants/sizes.dart';
import 'widgets/bottom_add_to_cart_widget.dart';
import 'widgets/product_attributes.dart';
import 'widgets/product_meta_data.dart';
import 'widgets/rading_share_widget.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            //1-product slider
            const TProductImageSlider(),

            //2- Product details
            Padding(
              padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [

                  //rating and share
                  const TRadingAndShare(),

                  //- Price, Title, stock, and brand
                  const TProductMetaData(),
                  const SizedBox(width: TSizes.spaceBtwItems,),

                  //-Attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections,),


                  //-checkout button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections,),


                  //- description
                  const TSectionHeading(title: 'Description', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwSections / 3,),
                  const ReadMoreText(
                    'This is a product description for blue nike sleeve less vest. There are more things that can be added but i am just practicing and nothing else..',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600) ,
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  //- reviews
                  const Divider(),
                   const SizedBox(height: TSizes.spaceBtwItems,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       const TSectionHeading(title: 'Review(199)',showActionButton: false, ),
                       IconButton(onPressed: ()=> Get.to(() => const ProductReviewsScreen()) , icon: const Icon(Iconsax.arrow_right_3, size: 18,),)
                     ],
                   ),
                   const SizedBox(height: TSizes.spaceBtwSections,)
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}




