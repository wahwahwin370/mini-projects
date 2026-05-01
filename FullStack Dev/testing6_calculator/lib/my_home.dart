import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  double result=0;
  TextEditingController firstController=TextEditingController();
  TextEditingController secondController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: titleWidget(),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            firstTextField(),

            SizedBox(height: 20.0,),
            secondTextField(),

            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.all(30.0),
              child: buttonBarWidget()
            ),
          ],
        ),
      ),
    );
  }

  Widget titleWidget(){
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.add_box),
        Text('Calculator')
      ],
    );
  }

  // --------text field
  Widget firstTextField(){
    return TextField(
      keyboardType: TextInputType.number,//for number only keyout
      controller: firstController,
      decoration: InputDecoration(
          labelText: "Enter First Number",
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),
            borderRadius: BorderRadius.circular(30.0)
          ),
          icon: Icon(Icons.numbers),
          prefixIcon: Icon(Icons.confirmation_num)
      ),
    );
  }

  Widget secondTextField(){
    return TextField(
      keyboardType: TextInputType.number,
      controller: secondController,
      decoration: InputDecoration(
        //hintText: "Enter Number Only",
        labelText: "Enter Second Number",
        icon: Icon(Icons.numbers),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple)
        ),
      ),

    );

  }



  // --------button group and result
  Widget buttonBarWidget(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: _add,
              child: Text('+', style: TextStyle(
                color: Colors.white
              ),),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
              ),
              onPressed: _sub,
              child: Text('-', style: TextStyle(
                  color: Colors.white
              ),),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: _mul,
              child: Text('*', style: TextStyle(
                  color: Colors.white
              ),),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: _div,
              child: Text('/', style: TextStyle(
                  color: Colors.white
              ),),
            ),
          ],
        ),
        SizedBox(height: 20.0,),
        Text('Result $result',style: TextStyle(
            fontSize: 30.0,
            color: Colors.indigo
        ),),
      ],
    );
  }


  //add action------
  _add(){
    String str1 = firstController.text;
    String str2 = secondController.text;

    double num1= double.parse(str1);
    double num2= double.parse(str2);

    setState(() {
      result = num1 + num2;
    });
  }


  // sub-----
  _sub(){
    String str1 = firstController.text;
    String str2 = secondController.text;

    double num1= double.parse(str1);
    double num2= double.parse(str2);

    setState(() {
      result = num1 - num2;
    });
  }


  // mul------
  _mul(){
    String str1 = firstController.text;
    String str2 = secondController.text;

    double num1= double.parse(str1);
    double num2= double.parse(str2);

    setState(() {
      result = num1 * num2;
    });
  }


  // div--------
  _div(){
    String str1 = firstController.text;
    String str2 = secondController.text;

    double num1= double.parse(str1);
    double num2= double.parse(str2);

    setState(() {
      result = num1 / num2;
    });
  }
}
