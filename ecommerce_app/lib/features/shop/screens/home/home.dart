import 'package:ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/custom_shape/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shape/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/heading_section.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../all_products/all_products.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, });



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //--app bar--
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //--searchbar
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //--heading and categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.textWhite,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        //categories
                        THomeCategories(),
                        SizedBox(height: TSizes.spaceBtwSections * 1.5,),
                      ],
                    ),
                  )
                ],
              ),
            ),


            //--body
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    //--slider
                    const TPromoSlider(),
                    const SizedBox(height: TSizes.spaceBtwSections ),
                    //--heading
                    TSectionHeading(title: 'Popular Products', onPressed: ()=> Get.to(()=> AllProducts())),
                    const SizedBox(height: TSizes.spaceBtwItems ),
                    //product cards
                    TGridLayout(itemCount: 4,itemBuilder: (_, index)=> const TProductCardVertical(),)  // wrap cards with grid ui
                  ],
                )
            ),

          ],
        ),
      ),
    );
  }
}



