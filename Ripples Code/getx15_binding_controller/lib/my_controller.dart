import 'package:get/get.dart';

//create my controller with increment method
class MyController extends GetxController{
  var count=0.obs;
  void increment(){
    count++;
  }
}