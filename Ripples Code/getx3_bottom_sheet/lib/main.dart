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
          title: Text('Bottom Sheet'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Get.bottomSheet(
                    Container(
                      child:Wrap(
                        children: [
                          ListTile(
                            leading: Icon(Icons.wb_sunny_outlined),
                            title: Text('Ligth Theme'),
                            onTap: ()=>{
                              Get.changeTheme(ThemeData.light())
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.wb_sunny),
                            title: Text('Dark Theme'),
                            onTap: ()=>{
                              Get.changeTheme(ThemeData.dark())
                            },
                          )
                        ],
                      ),
                    ),
                    barrierColor: Colors.yellow.shade100,//change the screen when click bottomSheet button

                    backgroundColor: Colors.orangeAccent,

                    isDismissible: true, //Allows the bottom sheet to be dismissed when the user taps outside

                    enableDrag: false,//prevent from drag able

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Colors.red,
                        style: BorderStyle.solid,
                        width: 2.0
                      )
                    ),


                  );
                },
                child: Text("Bottom Sheet"),
              )
            ],
          ),
        ),
      ),
    );
  }
}



