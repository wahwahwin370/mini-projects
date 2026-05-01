import 'package:flutter/material.dart';
import 'package:testing12_player_app/homepage/home_page.dart';

void main() {
  runApp(
      MaterialApp(
        home: HomePage(),
        theme: ThemeData(
          primaryColor: Colors.red,
        ),
      )
  );
}