import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx8_separate_file_student/teacher.dart';


class TeacherController extends GetxController{

  var teacher = Teachers(name : "Daw Hla", age: 45).obs;

  void covertToUppercase(){
    teacher.update((teacher){
      if (teacher != null) {
        teacher.name= teacher.name.toUpperCase();
      }
    });

  }

}