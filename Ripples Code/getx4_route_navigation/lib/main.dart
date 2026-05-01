import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){
                    Get.to(
                      Home(),

                      fullscreenDialog: true,//to provide cross button in back and it look like fullscreen dialog

                      transition: Transition.zoom,//for animation

                      duration: Duration(milliseconds: 4000), //transition animation

                      curve: Curves.bounceInOut,//curve animation
                    );
                  },
                  child: Text("Go To Home"),
              ),

              ElevatedButton(
                onPressed: (){
                  //Go To Home Page without back button
                  Get.off(Home(),);
                },
                child: Text("Go Off Home"),
              ),

              ElevatedButton(
                onPressed: (){
                  //Route to Home Page and cancel all previous Screens
                  Get.offAll(Home(),);
                },
                child: Text("Go Off All"),
              ),

              ElevatedButton(
                onPressed: (){
                  Get.to(Home(),arguments: "Data From Main");
                },
                child: Text("go to - with argument"),
              ),

              ElevatedButton(
                onPressed: () async {
                  var data=await Get.to(Home());
                  print("Get the data from Home Screen - $data");
                },
                child: Text("get data from home screen example "),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


