import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOme'),
      ),
      body: Center(
        child: Column(
          children: [
            Obx( ()=>
                Text("The value is ${Get.find<HomeController>().count}",)// call home page click value
            ),
            ElevatedButton(
                onPressed: (){
                  Get.find<HomeController>().decrement(); //decreament value
                },
                child: Text('Decrease')
            ),
            ElevatedButton(
                onPressed: (){
                  Get.back(); //back to home
                },
                child: Text('back')
            )
          ],
        ),
      ),
    );
  }
}
