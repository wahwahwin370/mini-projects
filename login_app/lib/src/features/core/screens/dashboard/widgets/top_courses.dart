import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../../../models/dashboard/courses_model.dart';

class DashboardTopCourses extends StatelessWidget {
  const DashboardTopCourses({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final coursesList = DashboardCoursesModel.list;
    return Column(
      children: [
        Text(
          tDashboardTopCourses,
          style: txtTheme.headlineMedium,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: coursesList.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index)=>
              GestureDetector(
                onTap: coursesList[index].onPress,
                child: SizedBox(
                  width: 320,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 5.0, left: 5.0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Theme.of(context).cardColor),
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  child: Text(
                                    coursesList[index].title,
                                    style: txtTheme.headlineSmall,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,)
                              ),
                              Flexible(child: Image(image: AssetImage(coursesList[index].image),height: 100,))
                            ],
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: CircleBorder()
                                ),
                                onPressed: (){
                                  //Get.to( ()=> const Dashboard());
                                },
                                child: Icon(Icons.play_arrow),
                              ),
                              SizedBox(width: tDashboardPadding,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(coursesList[index].heading,style: txtTheme.headlineSmall, maxLines: 2,overflow: TextOverflow.ellipsis,),
                                  Text(coursesList[index].subHeading,style: txtTheme.bodySmall, maxLines: 2,overflow: TextOverflow.ellipsis,)
                                ],
                              )
                            ],
                          ),
                        ],

                      ),
                    ),
                  ),
                ),
              ),

          ),
        )
      ],
    );
  }
}