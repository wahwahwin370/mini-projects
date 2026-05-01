import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/core/screens/dashboard/widgets/banners.dart';

import 'widgets/appbar.dart';
import 'widgets/categories.dart';
import 'widgets/search.dart';
import 'widgets/top_courses.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {

    //variables
    final txtTheme =Theme.of(context).textTheme;

    return SafeArea(
        child: Scaffold(
          appBar: DashboardAppBar(),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(tDashboardPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  //heading
                  Text(tDashboardTitle, style: txtTheme.bodyMedium,),
                  Text(tDashboardHeading, style: txtTheme.headlineMedium,),
                  SizedBox(height: tDashboardPadding,),

                  //search
                  DashboardSearchBox(txtTheme: txtTheme),
                  SizedBox(height: tDashboardPadding,),

                  //categories
                  DashboardCategories(txtTheme: txtTheme),
                  SizedBox(height: tDashboardPadding,),

                  //Banners
                  DashboardBanners(txtTheme: txtTheme),
                  SizedBox(height: tDashboardPadding,),

                  //top course
                  DashboardTopCourses(txtTheme: txtTheme)


                ],
              ),
            ),
          ),
        )
    );
  }
}









