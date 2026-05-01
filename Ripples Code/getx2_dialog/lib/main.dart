import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dialog'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){

                    //Get.defaultDialog();//default dialog code

                    //Customize Dialog
                    Get.defaultDialog(

                      title: "Dialog Title",
                      titleStyle: TextStyle(
                        fontSize: 25,
                      ),

                      content: Column(
                        children: [
                          CircularProgressIndicator(),
                          Text(
                            "This is middle Text",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.brown
                            ),
                          ),
                          // Add more widgets here if needed
                        ],
                      ),

                      backgroundColor: Colors.lightGreen,

                      radius: 5,

                      //Default Cancel and Confirm Action
                      onCancel: (){},
                      textCancel: "Cancel",
                      cancelTextColor: Colors.red,
                      textConfirm: "Confirm",
                      confirmTextColor: Colors.pink,
                      cancel: Text(
                        "Cancels",
                        style: TextStyle(
                          color: Colors.teal
                        ),
                      ),

                      //confirm button
                      onConfirm: (){},
                      buttonColor: Colors.yellow,
                      confirm: Text(
                        "Confirm",
                        style: TextStyle(
                          color: Colors.pink
                        ),
                      ),

                        //other function button
                      actions: [
                        ElevatedButton(
                            onPressed:(){
                              Get.back();//close dialog
                            },
                            child: Text("Action 1"),
                        ),
                        ElevatedButton(
                          onPressed:(){
                          },
                          child: Text("Action 2"),
                        )
                      ],
                      barrierDismissible: false//when touch dialog not to autoclose

                    );
                  },
                  child: Text("Show Dialog"),
              )
            ],
          ),
        ),
      ),
    );
  }
}



