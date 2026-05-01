import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  //const page1({super.key});

  String str;
  Page2(this.str);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,//show back button
        title: Text('Page 2',textAlign: TextAlign.center,),
      ),
      body: Column(
        children: [
          Text('Hello Page 2',textAlign: TextAlign.center,),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text('back')),
          Text(str,style: TextStyle(
            fontSize: 30,
          ),)

        ],
      ),
    );
  }
}
