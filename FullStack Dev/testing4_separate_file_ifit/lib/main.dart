import 'package:flutter/material.dart';

import 'my_widget.dart';


void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHome(),
      )
  );
}

Widget tabWidget(){
  return Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Today Plan', style: TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),),
        Text('Dashboard', style: TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ))
      ],
    ),
  );
}





class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(child: Text('Sport')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Expanded(
            flex: 1,
            child: Center(child: Text('iFit Coach', style: TextStyle(
                color: Colors.black87,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
            ),)),
          ),


          tabWidget(),

          MyWidget('Activity'.toUpperCase(), Colors.deepOrangeAccent),
          MyWidget('Workout'.toUpperCase(), Colors.amber),
          MyWidget('Nutrition'.toUpperCase(), Colors.green),
          MyWidget('Sleep'.toUpperCase(), Colors.blueAccent),
        ],
      ),
    );

  }
}

