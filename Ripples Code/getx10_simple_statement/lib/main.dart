import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx10_simple_statement/my_controller.dart';

void main() {
  runApp(MyApp());
}

//1-create controller file
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Simple Statement",
      home: Scaffold(
        appBar: AppBar(
          title: Text('State Management'),
        ),
        body: Center(
          child: Column(
            children: [
              //call controller and show value
              GetBuilder<MyController>(
                init: MyController(),
                  builder:(controller){
                    return Text("The value is ${controller.count}",
                    style: TextStyle(fontSize: 30),
                    );
                  }
              ),
              SizedBox(height: 30.0,),
              ElevatedButton(
                  onPressed: (){
                    //increase count
                    Get.find<MyController>().increment();
                  },
                  child: Text("increase")
              )
            ],
          ),
        ),
      ),
    );
  }
}

