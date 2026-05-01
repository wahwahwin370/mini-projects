import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../models/dashboard/categories_model.dart';
class DashboardCategories extends StatelessWidget {
  const DashboardCategories({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {

    final categoriesList = DashboardCategoriesModel.list;

    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: categoriesList.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>
            GestureDetector(
              onTap: categoriesList[index].onPress,
              child: SizedBox(
                width: 170,
                height: 45,
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: tPrimaryColor.withOpacity(0.2)
                      ),
                      child: Center(
                        child: Text(categoriesList[index].title, style: txtTheme.bodyMedium?.apply(
                            color: tPrimaryColor
                        ),),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(categoriesList[index].heading, style: txtTheme.bodyMedium,overflow: TextOverflow.ellipsis,),
                          Text(categoriesList[index].subHeading, style: txtTheme.bodyMedium,overflow: TextOverflow.ellipsis,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}