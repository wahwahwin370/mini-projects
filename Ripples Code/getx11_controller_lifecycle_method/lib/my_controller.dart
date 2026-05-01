import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs; // Declare as reactive

  @override
  void onInit() {
    super.onInit();// Ensures base class initialization
    print("Controller Initialized");

    // Start incrementing automatically
    _startIncrementing();
  }

  void _startIncrementing() async {
    while (true) {
      await Future.delayed(Duration(seconds: 5)); // Delay for 5 seconds
      count.value++; // Update the reactive variable
    }
  }

  @override
  void onClose() {
    print("Controller Closed");
    super.onClose();// Ensures base class cleanup
  }
}
