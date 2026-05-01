import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("This is Home Screen"),
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: (){

              },
              child: Text("Next Screen"),
            ),
            ElevatedButton(
              onPressed: (){
                Get.back();
              },
              child: Text("Back To Main"),
            ),
            Text("${Get.arguments}", style: TextStyle(color: Colors.red,fontSize: 30),),

            ElevatedButton(
              onPressed: (){
                Get.back(result:"This is from Home Screen");
              },
              child: Text("Get Data and print"),
            ),
          ],
        ),
      ),
    );
  }
}
