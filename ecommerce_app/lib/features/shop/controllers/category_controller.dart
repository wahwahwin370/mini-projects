import 'package:ecommerce_app/data/repositories/categories/category_repository.dart';
import 'package:ecommerce_app/features/shop/models/category_model.dart';
import 'package:ecommerce_app/utils/popups/loaders.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
class CategoryController extends GetxController{

  static CategoryController get instance => Get.find();

  final isLoading = false.obs;
  final _categoryRepository = Get.put(CategoryRepository()); //first time call
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;

  @override
  void onInit(){
    fetchCategories();
    super.onInit();
  }

  Future<void> fetchCategories() async{
    try{
      //show loader while loading categories
      isLoading.value = true;

      //fetch categories from data source(firestore, api, etc)-------
      final categories = await _categoryRepository.getAllCategories();

      //update the categories list
      allCategories.assignAll(categories);

      //filter feature categories
      featuredCategories.assignAll(allCategories.where((category) => category.isFeatured && category.parentId.isEmpty).take(8).toList());

    }
    catch(e){
      TLoader.errorSnackBar(title: "On snap!", message: e.toString());
    }finally{
      //Remove loader
      isLoading.value =false;
    }
  }
}