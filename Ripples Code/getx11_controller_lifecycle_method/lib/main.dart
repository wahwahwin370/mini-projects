import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx11_controller_lifecycle_method/my_controller.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Controller Lifecycle",
      home: Scaffold(
        appBar: AppBar(title: Text('Controller Lifecycle')),
        body: Center(
          child: Obx(() {
            return Text(
              "The value is ${myController.count}",
              style: TextStyle(fontSize: 25),
            );
          }),
        ),
      ),
    );
  }
}