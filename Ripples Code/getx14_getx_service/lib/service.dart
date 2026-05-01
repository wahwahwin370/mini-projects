import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A service class that extends GetxService for dependency injection.
class Service extends GetxService {
  /// Increments the counter value stored in SharedPreferences.
  Future<void> incrementCounter() async {
    // Obtain the SharedPreferences instance
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Retrieve the current counter value or default to 0
    int counter = (prefs.getInt('counter') ?? 0) + 1;

    // Print the number of times the button has been pressed
    print('Pressed $counter times.');

    // Save the updated counter value to SharedPreferences
    await prefs.setInt('counter', counter);
  }
}
