import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      theme: ThemeData(
        primarySwatch: Colors.brown
      ),
    )
  );
}


class MyApp extends StatefulWidget {
 // const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var tController1= TextEditingController();
  var tController2= TextEditingController();
  var tController3= TextEditingController();

  var result="Result";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator',style: TextStyle(
          color: Colors.white
        ),)),
        backgroundColor: Colors.orange
      ),
      body: Container(
        margin: EdgeInsets.only(top:50.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            TextField(
              controller: tController1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Weight',
                hintText: 'in lbs',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              controller: tController2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Height (Feet)',
                hintText: 'in lbs',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              controller: tController3,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Height (inches)',
                hintText: 'in lbs',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 40.0,),
            ElevatedButton(
                onPressed: _calculateBMI,
                child: Text('Calculate BMI', style: TextStyle(
                  color: Colors.white
                ),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
            ),
            SizedBox(height: 20.0,),
            Text(result),
          ],
        ),
      ),
    );
  }

  _calculateBMI(){
    double weight=double.parse(tController1.text);
    double feet=double.parse(tController2.text);
    double inches=double.parse(tController3.text);

      double totalInches=(feet*12)+inches;

      var bmi=(weight*703)/(totalInches*totalInches);
      
      if(bmi<18.5){
        result="Your are underWeight";
      }
      else if(bmi>=18.5 || bmi<24.9){
        result='Your are Normal weight!';
      }
      else if(bmi>=25 || bmi<=29.9){
        result='Your are over weight';
      }else{
        result='Your are Obesity';
      }


      setState(() { //prevent from refresh
      });
  }
}
