import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx14_getx_service/service.dart';

/// The entry point of the application.
Future<void> main() async {
  // Initialize services before running the app
  await initServices();
  runApp(MyApp());
}

/// Initializes all the necessary services for the app.
Future<void> initServices() async {
  print('Starting services...');

  // Use GetX to asynchronously initialize the Service class
  await Get.putAsync<Service>(() async => await Service());

  print('All services started...');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX Service",
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX Service / Save clicked times in memory'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Access the Service instance and call incrementCounter
                  Get.find<Service>().incrementCounter();
                },
                child: Text('Increase'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
