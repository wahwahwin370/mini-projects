import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Get.toNamed('/nextScreen');
                },
                child: Text("Next Screen"),
            ),
            ElevatedButton(
              onPressed: (){
                Get.toNamed('/');
              },
              child: Text("Back to Main"),
            ),

            Text(
                "Channel is ${Get.parameters['channel']} and "
                    "content is ${Get.parameters['content']}",
              style: TextStyle(
                color: Colors.red
              ),
            ),


          ],
        ),
      ),
    );
  }
}
