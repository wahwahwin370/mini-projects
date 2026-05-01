import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_binding_controller/home_controller.dart';

import 'all_binding_controller.dart';
import 'home.dart';
import 'my_controller.dart';
import 'home_controller.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //initialize this controller mean intialize two controller that binding in it
      initialBinding: AllBindingController(),
      title:'Binding',

      // getPages: [
      //   GetPage(
      //       name: '/home',
      //       page: ()=> Home(),
      //       binding:BindingsBuilder(()=> {
      //         Get.lazyPut<HomeController>(
      //                 () => HomeController()
      //         ),
      //       })
      //
      //   )
      // ],
      home: Scaffold(
        appBar: AppBar( title: Text('Binding Controller'),),
        body: Center(
          child: Column(
            children: [
              Obx(() => Text("The value is ${Get.find<MyController>().count}")), //display value
              ElevatedButton(
                  onPressed: (){
                    Get.find<MyController>().increment(); //increase value when click
                  },
                  child: Text('Increase')
              ),
              SizedBox(height: 40,),
              ElevatedButton(
                  onPressed: (){
                    Get.to(Home()); //go to home page
                    //Get.to(Home(),binding: HomeController()); //if doesn't binding controller
                  },
                  child: Text('Home')
              )
            ],
          )
        ),
      ),
    );
  }
}
