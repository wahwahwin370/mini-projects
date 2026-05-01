import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx8_separate_file_student/students.dart';

class StudentController extends GetxController{

  var student = Students();

  void covertToUppercase(){
    student.name.value = student.name.value.toUpperCase();
  }

}