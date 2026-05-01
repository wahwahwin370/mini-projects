import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/sortable/sortable_products.dart';
import 'package:ecommerce_app/common/widgets/texts/heading_section.dart';
import 'package:ecommerce_app/features/shop/screens/brand/brand_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/brands/t_brand_card.dart';
import '../../../../utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title:Text('Brand'), showBackArrow: true ,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Heading
              const TSectionHeading(title: 'Brand', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              //Brands
              TGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 65,//hide of brand card
                  itemBuilder: (content, index){
                    return TBrandCard(showBorder: true,onTap: ()=> Get.to(()=> BrandProducts()), );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
