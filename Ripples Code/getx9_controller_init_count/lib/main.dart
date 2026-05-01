import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'increase_count_conroller.dart';
 // Ensure this import matches your file structure

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  //1- Initialize controller
  final IncreaseController increaseCon = Get.put(IncreaseController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Controller',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Count Increase"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              //2- Display count value using GetX
              GetX<IncreaseController>(
                init: increaseCon, // Initialize the controller if not already done
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),

              SizedBox(height: 30),

              ElevatedButton(
                child: Text('Increase'),
                onPressed: () {
                  //3- Button action
                  increaseCon.increase();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
