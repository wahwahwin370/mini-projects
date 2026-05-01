import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  //const MyWidget({super.key});

  String str;
  Color color;

  MyWidget(this.str, this.color);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
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
}
