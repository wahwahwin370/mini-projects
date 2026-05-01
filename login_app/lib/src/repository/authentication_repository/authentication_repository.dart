import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:login_app/src/repository/exceptions/signup_email_password_failure.dart';

import '../../features/authentication/screens/splash_screen/splash_screen.dart';
import '../../features/core/screens/dashboard/dashboard.dart';

class AuthenticationRepository extends GetxController{

  //// Singleton instance
  static AuthenticationRepository get instance => Get.find();

  //Variables
  final _auth = FirebaseAuth.instance;// Firebase Auth instance for authentication
  late final Rx<User?>  firebaseUser;// Reactive variable for the current user
  var verificationId = ''.obs; //forOPT

  @override
  void onReady(){
    firebaseUser = Rx<User?>(_auth.currentUser);  //  current user to firebaseUser
    firebaseUser.bindStream(_auth.userChanges());  // Bind and listen for changes
    ever(firebaseUser, _setInitialScreen); // and then set the initial screen
  }

  //// Function to set the initial screen
  _setInitialScreen(User? user){
    // Check if the user is logged in or not
    user == null? Get.offAll(()=>  SplashScreen()) : Get.offAll(() => const Dashboard());
  }

// --------------phone authentication-----------
  void phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: ( credential) async {
        await _auth.signInWithCredential(credential);
      },
      codeSent: (verId, int? resendToken) {
        verificationId.value = verId;

        Get.snackbar('Code Sent', 'Check your SMS');
      },
      codeAutoRetrievalTimeout: (verId) {
        this.verificationId.value = verId;
      },
      verificationFailed: (FirebaseAuthException e) {
        if(e.code == 'invalid-phone-number'){
          Get.snackbar('Error', 'The provided phone number is not valid.');
        }
        else{
          Get.snackbar('Error', e.message ?? 'Unknown error. Try again');
        }

      },

    );
  }

  Future<bool> verifyOtp(String otp) async {
    try {
      var credential = PhoneAuthProvider.credential(
        verificationId: verificationId.value,
        smsCode: otp,
      );

      await _auth.signInWithCredential(credential);
      return true; // Return true if verification is successful
    } catch (e) {
      // Handle error and return false if there's an issue
      print("OTP verification failed: $e");
      return false;
    }
  }


////// ---------email and password authentication
  Future<void> createUserWithEmailAndPassword(String email, String password) async{
    try{
      //to create a new user use Firebase Authentication method

      firebaseUser.value != null ? Get.offAll(() => const Dashboard()) : Get.to(() => WelcomeScreen());// check firebaseUser is null or not and redirect
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
    }
    on FirebaseAuthException catch(e){ //// Catch Firebase Authentication exceptions
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);// Extract the error code
      print('Firebase Auth Exception - ${ex.message}');
    }catch (_){}
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async{
    try{
      //sign in the user use Firebase Authentication method
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    }
    on FirebaseAuthException catch(e){
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('Firebase Auth Exception - ${ex.message}');
    }catch (_){}
  }

  // Future<void> sendEmailVerification() async{
  //   try{
  //     _auth.currentUser?.sendEmailVerification();
  //   }
  //   on FirebaseAuthException catch (e){
  //     final ex = TExceptions.fromCode(e.code);
  //     throw ex.message;
  //   }catch(_){
  //
  //     const ex = Texceptions();
  //     throw ex.message;
  //   }
  //
  // }

// ----------log out----------
  Future<void> logout() async {
    try {
      // Sign out from Firebase
      await _auth.signOut();

      firebaseUser.value = null;

      // Redirect to the welcome/splash screen after logout
      Get.to(() => LoginScreen()); // Use SplashScreen or LoginScreen based on your flow.

      // Show a success snackbar (optional)
      //Get.snackbar('Logged Out', 'You have been successfully logged out.');
    } catch (e) {
      // Handle any errors during the logout process
      print('Logout Error: $e');
      Get.snackbar('Error', 'An error occurred while logging out. Please try again.');
    }
  }
}