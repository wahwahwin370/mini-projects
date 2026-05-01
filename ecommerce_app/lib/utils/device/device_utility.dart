import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TDeviceUtils {

  /// Hides the on-screen keyboard.
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  /// Sets the color of the status bar.
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIChangeCallback(
      SystemUiOverlayStyle(statusBarColor: color) as SystemUiChangeCallback?,
    );
  }

  /// Checks if the device is in landscape orientation (keyboard not visible).
  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  /// Checks if the device is in portrait orientation (keyboard visible).
  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  /// Enables or disables full-screen mode.
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  /// Returns the screen height of the current context.
  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  /// Returns the screen width of the provided context.
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(Get.context!).size.width;
  }

  /// Returns the pixel density (device pixel ratio) of the current screen.
  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  /// Returns the height of the status bar (top padding).
  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  /// Returns the default height of the bottom navigation bar.
  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  /// Returns the default height of the app bar (toolbar).
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  /// Returns the height of the keyboard (if visible).
  static double getKeyboardHeight() {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  /// Checks if the keyboard is currently visible.
  static Future<bool> isKeyboardVisible() async {
    final viewInsets = View.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;// Returns true if the keyboard is visible (viewInsets.bottom > 0)
  }

  /// Checks if the device is a physical Android or iOS device.
  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;
  }

  /// Triggers a vibration with a delay.
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  /// Sets the preferred orientation for the device (portrait or landscape).
  static Future<void> setPreferredOrientations(List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  /// Hides the status bar by disabling the system overlays.
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  /// Shows the status bar by enabling the system overlays.
  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }

  /// Checks if the device has an internet connection.
  static Future<bool> hasInternetConnection() async {
    try {
      // Attempts to lookup the IP address of 'example.com'.
      final result = await InternetAddress.lookup('example.com');
      // If the lookup returns a valid result, the device is connected to the internet.
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      // If a socket exception occurs, the device has no internet connection.
      return false;
    }
  }

  /// Returns true if the platform is iOS.
  static bool isIOS() {
    return Platform.isIOS;
  }

  /// Returns true if the platform is Android.
  static bool isAndroid() {
    return Platform.isAndroid;
  }

  /// Launches a given URL in the device's browser.
  static void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
