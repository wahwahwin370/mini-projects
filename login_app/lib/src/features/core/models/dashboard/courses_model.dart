import 'dart:core';

import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';

class DashboardCoursesModel {
  final String title;
  final String heading;
  final String subHeading;
  final String image;
  final VoidCallback? onPress;

  DashboardCoursesModel(
      this.title,
      this.heading,
      this.subHeading,
      this.image,
      this.onPress
      );

  static List<DashboardCoursesModel> list = [
    DashboardCoursesModel("Flutter Crash Course", "3 Sections", "Programming Language",tGroupIcon, null),
    DashboardCoursesModel("Java Script Course", "5 Sections", "Programming Language",tGroupIcon, null),
    DashboardCoursesModel("Hypertext Preprocessor.PHP. Course", "9 Sections", "Programming Language",tGroupIcon, null),
    DashboardCoursesModel("Kotlin Course", "1 Section", "Programming Language",tGroupIcon, null),
    DashboardCoursesModel("Laravel Framework Course", "6 Sections", "Programming Language",tGroupIcon, null),
  ];
}