import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';

class TTextTheme{
    TTextTheme._();
    static TextTheme lightTextTheme = TextTheme(
        titleLarge: GoogleFonts.poppins(color:Colors.black54, fontSize: 70, fontWeight: FontWeight.bold),
        titleMedium:GoogleFonts.poppins(color: Colors.black54, fontSize: 36, fontWeight: FontWeight.bold),
        titleSmall:GoogleFonts.poppins(color: Colors.black54, fontSize: 30, fontWeight: FontWeight.bold),
        headlineLarge: GoogleFonts.montserrat(color:Colors.black54, fontSize: 28, fontWeight: FontWeight.bold),
        headlineMedium : GoogleFonts.montserrat(color: Colors.black54, fontSize: 24,fontWeight: FontWeight.bold),
        headlineSmall : GoogleFonts.montserrat(color: Colors.black54, fontSize: 20,fontWeight: FontWeight.bold),
        bodyLarge:GoogleFonts.montserrat(color: Colors.black54, fontSize: 16),
        bodyMedium: GoogleFonts.montserrat(color: Colors.black54, fontSize: 14),
        bodySmall: GoogleFonts.montserrat(color: Colors.black54, fontSize: 12),
        labelMedium: GoogleFonts.poppins(color: Colors.black54, fontSize: 14),
    );
    static TextTheme darkTextTheme = TextTheme(
        titleLarge: GoogleFonts.poppins(color: Color( 0xFFFFFFFF), fontSize: 70, fontWeight: FontWeight.bold),
        titleMedium:GoogleFonts.poppins(color: Color( 0xFFFFFFFF), fontSize: 36, fontWeight: FontWeight.bold),
        titleSmall:GoogleFonts.poppins(color: Color( 0xFFFFFFFF), fontSize: 30, fontWeight: FontWeight.bold),
        headlineLarge: GoogleFonts.montserrat(color:Color( 0xFFFFFFFF), fontSize: 28, fontWeight: FontWeight.bold),
        headlineMedium : GoogleFonts.montserrat(color:Color( 0xFFFFFFFF), fontSize: 24,fontWeight: FontWeight.bold),
        headlineSmall : GoogleFonts.montserrat(color: Color( 0xFFFFFFFF), fontSize: 20,fontWeight: FontWeight.bold),
        bodyLarge:GoogleFonts.montserrat(color: Color( 0xFFFFFFFF), fontSize: 16),
        bodyMedium: GoogleFonts.montserrat(color: Color( 0xFFFFFFFF), fontSize: 14),
        bodySmall: GoogleFonts.montserrat(color: Color( 0xFFFFFFFF), fontSize: 12),
        labelMedium: GoogleFonts.poppins(color: Color( 0xFFFFFFFF), fontSize: 14),
    );

}



// class TTextTheme{
//     TTextTheme._();
//     static TextTheme lightTextTheme = TextTheme(
//         titleLarge: GoogleFonts.poppins(color: Colors.yellowAccent, fontSize: 70, fontWeight: FontWeight.bold),
//         titleMedium:GoogleFonts.poppins(color: Colors.greenAccent, fontSize: 36, fontWeight: FontWeight.bold),
//         titleSmall:GoogleFonts.poppins(color: Colors.black54, fontSize: 30, fontWeight: FontWeight.bold),
//         headlineLarge: GoogleFonts.montserrat(color: Colors.red, fontSize: 28, fontWeight: FontWeight.bold),
//         headlineMedium : GoogleFonts.montserrat(color: Colors.purple, fontSize: 24,),
//         headlineSmall : GoogleFonts.montserrat(color: Colors.pink, fontSize: 20,),
//         bodyLarge:GoogleFonts.montserrat(color: Colors.blueAccent, fontSize: 16),
//         bodyMedium: GoogleFonts.montserrat(color: Colors.green, fontSize: 14),
//         bodySmall: GoogleFonts.montserrat(color: Colors.deepPurple, fontSize: 12),
//         labelMedium: GoogleFonts.poppins(color: Colors.black54, fontSize: 14),
//     );
//     static TextTheme darkTextTheme = TextTheme(
//         titleLarge: GoogleFonts.poppins(color: Colors.yellow, fontSize: 70, fontWeight: FontWeight.bold),
//         titleMedium:GoogleFonts.poppins(color: Colors.deepOrange, fontSize: 36, fontWeight: FontWeight.bold),
//         titleSmall:GoogleFonts.poppins(color: Colors.pink, fontSize: 30, fontWeight: FontWeight.bold),
//         headlineLarge: GoogleFonts.montserrat(color: Colors.tealAccent, fontSize: 28, fontWeight: FontWeight.bold),
//         headlineMedium : GoogleFonts.montserrat(color: Colors.purple, fontSize: 24,),
//         headlineSmall : GoogleFonts.montserrat(color: Colors.pink, fontSize: 20,),
//         bodyLarge:GoogleFonts.montserrat(color: Colors.blueAccent, fontSize: 16),
//         bodyMedium: GoogleFonts.montserrat(color: Color(0xFFEECCCC), fontSize: 14),
//         bodySmall: GoogleFonts.montserrat(color: Colors.deepPurpleAccent, fontSize: 12),
//         labelMedium: GoogleFonts.poppins(color: tPrimaryColor, fontSize: 14),
//     );
//
// }