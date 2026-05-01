import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IncreaseController extends GetxController{

  var count=0.obs;
  void increase(){
    count++;
  }

}