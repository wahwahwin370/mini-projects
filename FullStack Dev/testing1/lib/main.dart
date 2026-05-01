import 'package:flutter/material.dart';

void main() {
  runApp(
    //1
    // MaterialApp(
    //   home : Container (
    //     color: Colors.white70,
    //     child: Text( 'Hello' ),
    //     alignment: Alignment.bottomCenter,
    //   )
    // )
    //
    //2
    // MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //   home : Scaffold(
    //     backgroundColor: Colors.white70,
    //     appBar: AppBar(
    //       title: Text('Testing 1'),
    //       //title:Icon(Icons.account_circle_rounded),
    //       // title: Container(
    //       //   child: Text('Testing 1'),
    //       //   color: Colors.teal,
    //       // ),
    //       leading: Icon(Icons.add),
    //     ),
    //     body: Container(
    //       child: Icon(Icons.account_circle_rounded),
    //       width: 200,
    //       height: 200,
    //       alignment: Alignment.center,
    //       padding: EdgeInsets.only(top:65),
    //       margin: EdgeInsets.all(20),
    //       decoration: BoxDecoration(
    //         color: Colors.teal, // Add a background color to see the container
    //         border: Border.all(color: Colors.black, width: 10),
    //         //borderRadius: BorderRadius.circular(16),
    //         shape: BoxShape.circle,
    //       ),
    //
    //     ),
    //   )
    // )

    //3
    // MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text('Row'),
    //     ),
    //     body:  Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       children: [
    //         Container(child: Center(child: Text('Hello')), color: Colors.orange,),
    //         Container(child: Icon(Icons.add_chart), color: Colors.green,),
    //         Container(child: Text('World'), color: Colors.deepPurpleAccent,),
    //         Container(child: Icon(Icons.account_circle_rounded),color: Colors.lime,)
    //       ],
    //     ),
    //   ),
    // )

    //4
    MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
      title:Text('home'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,//column stretch
        children: [
          Container(
            color: Colors.green,child: Text('green Text'),
          ),
          Expanded(child: Container(color: Colors.lime, child: Text('Hello'),)),//expanded for changing container to child widget
          Expanded(child:Container(color: Colors.orange, child: Text('Flutter'),)),
          Expanded(child:Container(color: Colors.cyanAccent, child: Text('Dart'),)),

          Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Text('expand'),
                        color:Colors.deepPurpleAccent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text('expand'),
                      color:Colors.purple,
                    ),
                  ),
                ],
              )
          ),

          Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,//stretch row
                children: [
                  Expanded(
                    child: Container(
                      child: Text('expand'),
                      color:Colors.deepPurpleAccent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text('expand'),
                      color:Colors.purple,
                    ),
                  ),
                ],
              )
          )
        ],
      ),
    ),
    )
  );
}


