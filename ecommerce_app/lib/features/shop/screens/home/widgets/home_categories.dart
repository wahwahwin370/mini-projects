import 'package:ecommerce_app/features/shop/screens/sub_category/sub_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../common/widgets/loaders/category_shimmer.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../controllers/category_controller.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());
    return Obx(
        (){
          if(categoryController.isLoading.value) return const TCategoryShimmer();

          if(categoryController.featuredCategories.isEmpty){
            return Center(child: Text('No Data Found', style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),),);
          }

          return SizedBox(
            height: 80,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: categoryController.featuredCategories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index){
                  final category = categoryController.featuredCategories[index];
                  return  Column(
                    children: [
                      TVerticalImaageText(
                        image: category.image,
                        backgroundColor: TColors.light,
                        title: category.name,
                        onTap: ()=> Get.to(()=> const SubCategoriesScreen()),
                      ),
                    ],
                  );
                }
            ),
          );
        }
    );
  }
}