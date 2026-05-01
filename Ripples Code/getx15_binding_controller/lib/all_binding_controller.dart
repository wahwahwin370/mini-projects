import 'package:get/get.dart';

import 'home_controller.dart';
import 'my_controller.dart';

//bind two controller
class AllBindingController implements Bindings{
  @override
  void dependencies(){
    Get.lazyPut<MyController>( () => MyController() );
    Get.lazyPut<HomeController>( () => HomeController() );
  }
}