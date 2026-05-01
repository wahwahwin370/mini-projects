import 'package:ecommerce_app/routes/routes.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';

import 'features/shop/models/banner_model.dart';
import 'features/shop/models/category_model.dart';

final List<BannerModel> dummyBanners = [
  BannerModel (imageUrl : TImages.promoBanner1, targetScreen : TRoutes.order, active : true),
  BannerModel (imageUrl : TImages.promoBanner2, targetScreen : TRoutes.store, active : false),
  BannerModel (imageUrl : TImages.promoBanner3, targetScreen : TRoutes.settings, active : false),
];

class TDummyData {
  static final List<CategoryModel> dummyCategories = [
    // Main Categories
    CategoryModel(
      id: '1',
      name: 'Shoe',
      image: 'assets/icons/categories/icons8-shoes-64.png',
      isFeatured: true,
      parentId: '',
    ),
    CategoryModel(
      id: '2',
      name: 'Electronics',
      image: 'assets/icons/categories/icons8-smartphone-64.png',
      isFeatured: true,
      parentId: '',
    ),
    CategoryModel(
      id: '3',
      name: 'Furniture',
      image: 'assets/icons/categories/icons8-dining-chair-64.png',
      isFeatured: false,
      parentId: '',
    ),
    CategoryModel(
      id: '4',
      name: 'Clothing',
      image: 'assets/icons/categories/icons8-tailors-dummy-64.png',
      isFeatured: false,
      parentId: '',
    ),
    CategoryModel(
      id: '5',
      name: 'Cosmetics',
      image: 'assets/icons/categories/icons8-cosmetics-64.png',
      isFeatured: true,
      parentId: '',
    ),


  ];
}
