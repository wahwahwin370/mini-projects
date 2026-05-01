import 'package:flutter/material.dart';

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


Widget myWidget(String str, Color color){
  return Expanded(
    flex: 2,
    child: Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.only(left: 30.0),
      child: Text( str,style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
          letterSpacing: 3
      ),),
      color: color,
      alignment: Alignment.centerLeft,
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

          myWidget('Activity'.toUpperCase(), Colors.deepOrangeAccent),
          myWidget('Workout'.toUpperCase(), Colors.amber),
          myWidget('Nutrition'.toUpperCase(), Colors.green),
          myWidget('Sleep'.toUpperCase(), Colors.blueAccent),
        ],
      ),
    );

  }
}

