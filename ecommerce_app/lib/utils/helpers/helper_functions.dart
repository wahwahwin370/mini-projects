import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:intl/intl.dart';


class THelperFunctions {
  static Color? getColor (String value){

    //define your product specific colors here and it will match the attribute colors nd show specific

      if (value == 'Green') {
        return Colors.green;
      } else if (value == 'Red') {
        return Colors.red;
      } else if (value == 'Blue') {
        return Colors.blue;
      } else if (value == 'Pink') {
        return Colors.pink;
      } else if (value == 'Grey') {
        return Colors.grey;
      } else if (value == 'Purple') {
        return Colors.purple;
      } else if (value == 'Black') {
        return Colors.black;
      } else if (value == 'White') {
        return Colors.white;
      } else if (value == 'Teal') {
        return Colors.teal;
      } else if (value == 'Indigo') {
        return Colors.indigo;
      } else if (value == 'Amber') {
        return Colors.amber;
      } else if (value == 'Lime') {
        return Colors.lime;
      } else if (value == 'Cyan') {
        return Colors.cyan;
      } else if (value == 'DeepPurple') {
        return Colors.deepPurple;
      } else if (value == 'DeepOrange') {
        return Colors.deepOrange;
      } else if (value == 'LightBlue') {
        return Colors.lightBlue;
      } else if (value == 'LightGreen') {
        return Colors.lightGreen;
      } else if (value == 'Yellow') {
        return Colors.yellow;
      } else if (value == 'Brown') {
        return Colors.brown;
      } else if (value == 'Orange') {
        return Colors.orange;
      } else if (value == 'BlueGrey') {
        return Colors.blueGrey;
      } else if (value == 'LightPink') {
        return const Color(0xFFFFB6C1);
      } else if (value == 'PeachPuff') {
        return const Color(0xFFFFDAB9);
      } else if (value == 'Lavender') {
        return const Color(0xFFE6E6FA);
      } else if (value == 'Beige') {
        return const Color(0xFFF5F5DC);
      } else if (value == 'MintCream') {
        return const Color(0xFFF5FFFA);
      } else if (value == 'HoneyDew') {
        return const Color(0xFFF0FFF0);
      } else if (value == 'Ivory') {
        return const Color(0xFFFFFFF0);
      } else if (value == 'AliceBlue') {
        return const Color(0xFFF0F8FF);
      } else if (value == 'CornflowerBlue') {
        return const Color(0xFF6495ED);
      } else if (value == 'MidnightBlue') {
        return const Color(0xFF191970);
      } else if (value == 'RoyalBlue') {
        return const Color(0xFF4169E1);
      } else if (value == 'SlateBlue') {
        return const Color(0xFF6A5ACD);
      } else if (value == 'SteelBlue') {
        return const Color(0xFF4682B4);
      } else if (value == 'SkyBlue') {
        return const Color(0xFF87CEEB);
      } else if (value == 'DodgerBlue') {
        return const Color(0xFF1E90FF);
      } else if (value == 'Azure') {
        return const Color(0xFFF0FFFF);
      } else if (value == 'LightCyan') {
        return const Color(0xFFE0FFFF);
      } else if (value == 'DarkTurquoise') {
        return const Color(0xFF00CED1);
      } else if (value == 'Aquamarine') {
        return const Color(0xFF7FFFD4);
      } else if (value == 'PaleTurquoise') {
        return const Color(0xFFAFEEEE);
      } else if (value == 'MediumSpringGreen') {
        return const Color(0xFF00FA9A);
      } else if (value == 'SpringGreen') {
        return const Color(0xFF00FF7F);
      } else if (value == 'SeaGreen') {
        return const Color(0xFF2E8B57);
      } else if (value == 'ForestGreen') {
        return const Color(0xFF228B22);
      } else if (value == 'DarkGreen') {
        return const Color(0xFF006400);
      } else if (value == 'LightGoldenrodYellow') {
        return const Color(0xFFFAFAD2);
      } else if (value == 'Khaki') {
        return const Color(0xFFF0E68C);
      } else if (value == 'Olive') {
        return const Color(0xFF808000);
      } else if (value == 'DarkOliveGreen') {
        return const Color(0xFF556B2F);
      } else if (value == 'Chartreuse') {
        return const Color(0xFF7FFF00);
      } else if (value == 'PaleGreen') {
        return const Color(0xFF98FB98);
      } else if (value == 'GreenYellow') {
        return const Color(0xFFADFF2F);
      } else if (value == 'Moccasin') {
        return const Color(0xFFFFE4B5);
      } else if (value == 'NavajoWhite') {
        return const Color(0xFFFFDEAD);
      } else if (value == 'Bisque') {
        return const Color(0xFFFFE4C4);
      } else if (value == 'BlanchedAlmond') {
        return const Color(0xFFFFEBCD);
      } else if (value == 'Wheat') {
        return const Color(0xFFF5DEB3);
      } else if (value == 'CornSilk') {
        return const Color(0xFFFFF8DC);
      } else if (value == 'AntiqueWhite') {
        return const Color(0xFFFAEBD7);
      } else if (value == 'Linen') {
        return const Color(0xFFFAF0E6);
      } else if (value == 'Seashell') {
        return const Color(0xFFFFF5EE);
      } else if (value == 'SandyBrown') {
        return const Color(0xFFF4A460);
      } else if (value == 'Chocolate') {
        return const Color(0xFFD2691E);
      } else if (value == 'Tomato') {
        return const Color(0xFFFF6347);
      } else if (value == 'Salmon') {
        return const Color(0xFFFA8072);
      } else if (value == 'DarkSalmon') {
        return const Color(0xFFE9967A);
      } else if (value == 'Coral') {
        return const Color(0xFFFF7F50);
      } else if (value == 'HotPink') {
        return const Color(0xFFFF69B4);
      } else if (value == 'LightCoral') {
        return const Color(0xFFF08080);
      } else if (value == 'Orchid') {
        return const Color(0xFFDA70D6);
      } else if (value == 'Thistle') {
        return const Color(0xFFD8BFD8);
      } else if (value == 'LavenderBlush') {
        return const Color(0xFFFFF0F5);
      } else if (value == 'MistyRose') {
        return const Color(0xFFFFE4E1);
      } else if (value == 'LightSlateGray') {
        return const Color(0xFF778899);
      } else if (value == 'SlateGray') {
        return const Color(0xFF708090);
      } else if (value == 'DarkSlateGray') {
        return const Color(0xFF2F4F4F);
      } else if (value == 'DimGray') {
        return const Color(0xFF696969);
      } else if (value == 'RosyBrown') {
        return const Color(0xFFBC8F8F);
      } else if (value == 'Sienna') {
        return const Color(0xFFA0522D);
      } else if (value == 'Maroon') {
        return const Color(0xFF800000);
      } else if (value == 'Plum') {
        return const Color(0xFFDDA0DD);
      } else if (value == 'MediumVioletRed') {
        return const Color(0xFFC71585);
      } else if (value == 'Violet') {
        return const Color(0xFFEE82EE);
      } else {
        return null; // Default case if no match
      }


  }


  static void showSnackBar(String message){
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  static void showAlert(String title, String message){
    showDialog(
        context: Get.context!,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('OK'),
              )
            ],
          );
        }
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen ),
    );
  }

  static String truncateText(String text, int maxLength){
    if(text.length <= maxLength){
      return text;
    }else{
      return '${text.substring(0,maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date, {String format = 'dd MMM yyyy'}){
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list){
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize){
    final wrappedList = <Widget>[];
    for(var i = 0; i < widgets.length; i+= rowSize){
      final rowChildren = widgets.sublist(i, i+rowSize > widgets.length ? widgets.length :i + rowSize);
      wrappedList.add(Row(children: rowChildren,));
    }
    return wrappedList;
  }
}