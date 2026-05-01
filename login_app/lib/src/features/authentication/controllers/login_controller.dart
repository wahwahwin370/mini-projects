import 'package:get/get.dart';

import '../../../repository/authentication_repository/authentication_repository.dart';

class LoginController extends GetxController {
  // Reactive variables to hold email and password
  var email = ''.obs;
  var password = ''.obs;

  // Function to handle login
  Future<void> login() async {
    // You can add validation here (e.g., check if email and password are empty)
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Please enter both email and password');
      return;
    }

    // Call your AuthenticationRepository to handle login
    await AuthenticationRepository.instance.loginWithEmailAndPassword(email.value, password.value);
  }
}