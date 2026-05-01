import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_controller.dart';


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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                id: 'txtCount',// Unique ID
                builder: (controller){
                  return Text("The value is ${controller.count}", style: TextStyle(fontSize: 20),
                  );
                }
              ),
              GetBuilder<MyController>(
                  builder: (controller){
                    return Text("The value is ${controller.count}", style: TextStyle(fontSize: 20),
                    );
                  }
              ),

              SizedBox(height: 40,),
              ElevatedButton(
                  onPressed: ()=>
                    myController.increment(),
                  child: Text("increase"),
              )
            ],
          ),
        ),
      ),
    );
  }
}