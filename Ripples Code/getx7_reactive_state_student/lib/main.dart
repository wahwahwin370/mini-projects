import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx7_reactive_state_student/students.dart';
import 'package:getx7_reactive_state_student/teacher.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  var student = Students();
  final teacher = Teachers( name:"Daw Mya", age:25).obs;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "State Management",
      home: Scaffold(
        appBar: AppBar(
          title: Text('State Management Title'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                  "Name is ${student.name.value}",
                style: TextStyle(fontSize: 20),
                ),
              ),
              Obx(() => Text(
                "Name is ${teacher.value.name}",
                style: TextStyle(fontSize: 20),
              ),
              ),
              SizedBox( height: 20,),
              ElevatedButton(
                  onPressed: (){
                    student.name.value = student.name.value.toUpperCase();
                  },
                  child: Text('Upper')
              ),
              ElevatedButton(
                  onPressed: (){
                    teacher.update((teacher){
                      if (teacher != null) {
                        teacher.name.value = teacher.name.value.toUpperCase();
                      }
                    });
                  },
                  child: Text('to upper')
              )
            ],
          ),
        ),
      ),
    );
  }
}
