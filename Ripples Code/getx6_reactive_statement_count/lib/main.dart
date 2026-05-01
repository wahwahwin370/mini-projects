import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Initialize count as a reactive variable.
  var count = 0.obs;

  void increment(){
    count++;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Reactive Statement',
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Name'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Example usage of the reactive variable
              Obx(() => Text('Count: ${count}')),
              ElevatedButton(
                onPressed: () {
                  increment();
                },
                child: Text('Increment Count'),
              ),


            ],
          ),
        ),
      ),
    );
  }
}



