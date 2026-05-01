import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/brands/t_brand_card.dart';
import 'package:ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/heading_section.dart';
import 'package:ecommerce_app/features/shop/controllers/category_controller.dart';
import 'package:ecommerce_app/features/shop/screens/cart/cart.dart';
import 'package:ecommerce_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/custom_shape/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/tabbar/t_tab_bar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../brand/all_brands.dart';
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    // Use Obx to listen to changes in featuredCategories
    return Obx(() {
      final categories = CategoryController.instance.featuredCategories;

        if (categories.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return DefaultTabController(
          length: categories.length,
          child: Scaffold(
            appBar: TAppBar(
              title: Text('Store', style:  Theme.of(context).textTheme.headlineMedium),
              actions: [
                TCartCounterIcon(onPressed: () => Get.to(() => CartScreen()), iconColor: TColors.white,)
              ],
            ),
            body: NestedScrollView(
              headerSliverBuilder: (_, innerBoxIsScrolled){
                return [
                  SliverAppBar(
                    pinned: true,
                    floating: true,
                    backgroundColor: dark ? Colors.black : TColors.white,
                    expandedHeight: 440,
                    flexibleSpace : Padding(
                      padding: const EdgeInsets.all(TSizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          //search bar
                          const SizedBox(height: TSizes.spaceBtwItems,),
                          const TSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                          const SizedBox(height: TSizes.spaceBtwSections,),

                          //Feature Brands
                          TSectionHeading(title: "Feature Brands", onPressed: () => Get.to(() => AllBrandsScreen())),
                          const SizedBox(height: TSizes.spaceBtwItems / 3,),

                          TGridLayout(
                              itemCount: 4,
                              mainAxisExtent: 65, //height of brand card
                              itemBuilder: (_, index){
                                return TBrandCard(showBorder: true, );
                              }
                          ),
                        ],
                      ),
                    ),
                    bottom: TTabBar(
                      tabs: categories.map((category) => Tab(child: Text(category.name))).toList(),
                    ),
                  )
                ];
              },
              body: TabBarView(
                children: categories.map((category) => TCategoryTab(category: category)).toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}





