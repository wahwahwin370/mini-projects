import 'package:flutter/material.dart';
import 'package:get/get.dart';
class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Screen Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('This is Next Screen Page'),
            Text(
              "${ Get.parameters['someValue']}",
              style: TextStyle(
                  color: Colors.green
              ),
            )
          ],
        ),
      ),
    );
  }
}
