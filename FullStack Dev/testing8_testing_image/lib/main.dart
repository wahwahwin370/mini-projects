import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  List<String> imgList=['images/1.jpg','images/2.jpg','images/3.jpg','images/4.jpg','images/5.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Testing'),
      ),
      body: ListView(  //listView for scrolling screen

        scrollDirection: Axis.horizontal, //for horizonal scroll
        children: [
             Image.asset("images/1.jpg"), //show only 1 img

             Image.asset(imgList[2], width: 140, height: 60,), //get image from img arr list

              //get image from online
             Image.network('https://images.unsplash.com/photo-1723910332316-463af386e82d?q=80&w=2815&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),

              Container(
                width: 100,
                height: 150,
                child: Image.network('https://images.unsplash.com/photo-1723910332316-463af386e82d?q=80&w=2815&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',fit: BoxFit.fill,), //fit img
              )


        ],
      ),
    );
  }
}

