import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // The list of image paths
  final List<String> imgList = [
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg',
    'images/4.jpg',
    'images/5.jpg',
  ];

  List<Girls> girls=[
    Girls('Aye Aye', 'images/1.jpg'),
    Girls('Mya Mya', 'images/2.jpg'),
    Girls('Soe Soe', 'images/3.jpg'),
    Girls('Pa Pa', 'images/4.jpg'),
    Girls('Wah Wah', 'images/5.jpg'),
  ];

  var centerCorouselcontroller=PageController(viewportFraction:0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Testing (PageView.builder)'),
      ),
      body: PageView.builder(    //if PageView it use one page for one card
        controller: centerCorouselcontroller,
        scrollDirection: Axis.horizontal, //horizonal scroll
        itemCount: imgList.length, // Set count parameter
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                Container(child: Image.asset(girls[index].img), ),
                Text(girls[index].name),
              ],
            ),
          );
          
        },
      ),
    );
  }
}


class Girls{
  String name;
  String img;

  Girls(this.name, this.img);
}