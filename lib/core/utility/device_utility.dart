import 'package:flutter/material.dart';

class DeviceUtility {
  const DeviceUtility._();

  static double appDeviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double appDeviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static void navigateToPage(BuildContext context, Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }
}
