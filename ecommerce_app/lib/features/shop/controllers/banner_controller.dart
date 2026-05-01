import 'package:ecommerce_app/data/repositories/banners/banner_repository.dart';
import 'package:get/get.dart';

import '../../../utils/popups/loaders.dart';
import '../models/banner_model.dart';

class BannerController extends GetxController{

  // variables
  final isLoading = false.obs;
  final carouselCurrentIndex = 0.obs;
  final RxList<BannerModel> banners = <BannerModel>[].obs;

  @override
  void onInit(){
    fetchBanners();
    super.onInit();
  }

  //Update Page Navigational Dots
  void updatePageIndicator(index){
    carouselCurrentIndex.value = index;
  }

  //Fetch Banner
  Future<void> fetchBanners() async{
    try{
      //show loader while loading categories
      isLoading.value = true;

      //fetch banners
      final bannerRepo = Get.put(BannerRepository());
      final banners = await bannerRepo.fetchBanners();

      //assign banner
      this.banners.assignAll(banners);

    }
    catch(e){
      TLoader.errorSnackBar(title: "On snap!", message: e.toString());
    }finally{
      //Remove loader
      isLoading.value =false;
    }
  }

}