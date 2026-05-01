import 'package:flutter/material.dart';
import 'package:getx13_languages/messages.dart';
import 'package:get/get.dart';

import 'my_controller.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});


  MyController myController = Get.put(MyController());//initialize

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations : Messages(),
      locale: Locale('en', 'US'),//start with this language
      fallbackLocale: Locale('en', 'US'),//if there is something wrong or unavailable show with this language
      home: Scaffold(
        appBar: AppBar( title:  Text("Internationalization"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'hello'.tr, style: TextStyle( //replace here
                  fontSize: 20, color: Colors.red
                ),
              ),
                ElevatedButton(
                    onPressed: (){
                      myController.changeLanguage('hi', 'IN');
                    },
                    child: Text('Hindi'),
                ),
                ElevatedButton(
                    onPressed: (){
                      myController.changeLanguage('fr', 'FR');
                    },
                    child: Text('French')
                ),
                ElevatedButton(
                    onPressed: (){
                      myController.changeLanguage('en', 'US');
                    },
                    child: Text('English')
                ),
            ],
          ),
        ),
      ),

    );
  }
}
