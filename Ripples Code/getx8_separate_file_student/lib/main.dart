import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx8_separate_file_student/student_controller.dart';
import 'package:getx8_separate_file_student/students.dart';
import 'package:getx8_separate_file_student/teacher.dart';
import 'package:getx8_separate_file_student/teacher_controller.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  StudentController studentController =Get.put ( StudentController()); //1-create object
  TeacherController teacherController = Get.put (TeacherController());

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
                  "Name is ${studentController.student.name}", //2-4-display
                style: TextStyle(fontSize: 20),
                ),
              ),

              Obx(() => Text(
                "Name is ${teacherController.teacher.value.name}", //2-4-display
                style: TextStyle(fontSize: 20),
              ),
              ),


              SizedBox( height: 20,),
              ElevatedButton(
                  onPressed: (){
                    studentController.covertToUppercase(); //3-do action
                  },
                  child: Text('To UpperCase')
              ),
              ElevatedButton(
                  onPressed: (){
                    teacherController.covertToUppercase(); //3-do action
                  },
                  child: Text('To LowerCase')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
