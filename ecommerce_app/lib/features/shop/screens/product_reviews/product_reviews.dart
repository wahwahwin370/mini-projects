import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../common/widgets/products/ratings/rating_star_indicator.dart';
import 'widgets/overall_product_rating.dart';
import 'widgets/user_review_cart.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: TAppBar( title : Text('Reviews & Rating'), showBackArrow: true,),

      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Rating and reviews are verified and are from people who use the same type of device that you use'),
              SizedBox(height: TSizes.spaceBtwItems,),

              //overall product rating
              TOverallProductRating(),
              TRatingStarIndicator(rating: 4.5,),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall,),
              SizedBox(height: TSizes.spaceBtwItems,),

              //user reviews list
              UserReviewCart(),
              SizedBox(height: TSizes.spaceBtwItems,),
              UserReviewCart()

            ],
          ) ,
        ),
      ),
    );
  }
}






