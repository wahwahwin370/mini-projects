import 'package:get/get.dart';

//create home controller with decrement method
class HomeController extends GetxController{
  var count=0.obs;
  void decrement(){
    count--;
  }
}