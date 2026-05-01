import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Snackbar Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Snackbar Title",
                  "This will be Snackbar Message",
                  snackPosition: SnackPosition.BOTTOM,//snackbar appear position
                  // titleText: Text("Another Title"),
                  // messageText: Text(
                  //   "Another Message",
                  //   style: TextStyle(
                  //     color: Colors.green
                  //   ),
                  // ),
                  colorText: Colors.red,

                  backgroundColor: Colors.yellow,

                  borderRadius: 50,

                  margin: EdgeInsets.all(20),

                  maxWidth: 200,

                  animationDuration: Duration(milliseconds: 3000),

                  backgroundGradient: LinearGradient(
                      colors: [
                        Colors.orange,Colors.yellow
                      ]
                  ),

                  borderColor: Colors.pink,

                  borderWidth: 3,

                  boxShadows: [
                    BoxShadow(
                      color: Colors.yellow,
                      offset: Offset(30,10),
                      spreadRadius: 20,
                      blurRadius:80
                    )
                  ],

                  isDismissible: true,
                  //dismissDirection: SnackDismissDirection.HORIZONTAL,//can't run
                  forwardAnimationCurve: Curves.bounceIn,//animation type
                  duration: Duration(milliseconds: 5000),
                  icon: Icon(
                    Icons.send,
                    color: Colors.blue,
                  ),//animate Duration
                  shouldIconPulse: false,

                  reverseAnimationCurve: Curves.bounceOut,//animation type

                  leftBarIndicatorColor: Colors.teal,

                  mainButton: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue, // Set background color here
                    ),
                    onPressed: () {
                      print("Retry Click");
                    },
                    child: Text("Retry"),
                  ),

                  onTap: (val){ //when click snack bar
                    print("Snack Clicked");
                  },

                  overlayBlur: 5, //overlay Blur original screen and show snackBar Clearly

                  overlayColor: Colors.grey,
                  
                  padding: EdgeInsets.all(5.0),

                  showProgressIndicator: true,//topof snackbar progress

                  progressIndicatorBackgroundColor: Colors.lightGreen,
                  
                  progressIndicatorValueColor: AlwaysStoppedAnimation<Color>(Colors.white),

                  snackbarStatus: (val){
                    print(val);//snackbar opening/closing/opened/closed
                  },

                  // Form snackbar
                  // userInputForm: Form(
                  //     child: Row(
                  //       children: [
                  //         Expanded(
                  //             child: TextField()
                  //         )
                  //       ],
                  //     )
                  // )
                );
              },
              child: Text('Show Snackbar'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
