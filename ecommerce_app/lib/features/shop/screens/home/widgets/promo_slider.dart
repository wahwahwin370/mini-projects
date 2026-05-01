import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/common/widgets/loaders/shimmer_loader.dart';
import 'package:ecommerce_app/features/shop/controllers/banner_controller.dart';
import 'package:ecommerce_app/features/shop/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../../common/widgets/custom_shape/containers/circular_container.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../dummy_data.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BannerController());

    ///***controller for carousel dot

    //loader
    if(controller.isLoading.value) return const TShimmerEffect(width: double.infinity, height: 190);

    ///no data found
    if(controller.banners.isEmpty){
      return const Center(
        child: Text('No Banner Found!'),
      );
    } else{
      return Obx(
              () {
            return Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                      viewportFraction: 1, onPageChanged: (index, _) => controller.updatePageIndicator(index)),
                      items: controller.banners.map((dummyBanners) =>
                      TRoundedImage(imageUrl: dummyBanners.imageUrl,
                        isNetworkImage: true,
                        onPressed: () => Get.toNamed(dummyBanners.targetScreen),)).toList(),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Obx(
                      () =>
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Dots for carousel indicator
                          for (int i = 0; i < controller.banners.length; i++)
                            TCircularContainer(
                              width: 20,
                              height: 4,
                              margin: const EdgeInsets.only(right: 5),
                              backgroundColor: controller.carouselCurrentIndex.value == i ? TColors.primaryColor : TColors
                                  .grey, // explicitly set the color
                            ),
                        ],
                      ),
                ),
              ],
            );
          }
      );
    }
  }
}
