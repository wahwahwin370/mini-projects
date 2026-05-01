import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';
import 'nextScreen.dart'; // Make sure this file has a Home widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      initialRoute: '/',
      defaultTransition: Transition.zoom, // Default transition
      getPages: [
        GetPage(name: '/', page: () => const MainScreen()),
        GetPage(name: '/home', page: () => const Home()),
        GetPage(name: '/nextScreen', page: () => const NextScreen(),
          transition: Transition.leftToRight, //custom
        ),
        GetPage(name: '/nextScreen:someValue', page: () => const NextScreen(),),
       // unknownRoute: GetPage(name: '/nofound', page: () => const UnknownRoute()),
      ],
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/home');
              },
              child: const Text("Go to Home"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/nextScreen');
              },
              child: const Text("Next Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/home?channel=Wah Wah &content=Hello",);
              },
              child: const Text("Dynamic Url"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/nextScreen12345",);
              },
              child: const Text("Get Value From Url"),
            ),

          ],
        ),
      ),
    );
  }
}



class UnknownRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Not Found'),
      ),
      body: Center(child: Text('404 - Page Not Found')),
    );
  }
}