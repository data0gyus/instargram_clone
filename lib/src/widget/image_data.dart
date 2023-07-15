import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageData extends StatelessWidget {
  final String path;
  final double width;
  const ImageData({super.key, required this.path, this.width = 60});

  @override
  Widget build(BuildContext context) {
    return Image.asset(path, width: width / Get.mediaQuery.devicePixelRatio);
  }
}

class ImagePath {
  static String get homeOn => 'assets/images/bottom_nav_home_on_icon.jpg';
  static String get homeOff => 'assets/images/bottom_nav_home_off_icon.jpg';
  static String get searchOn => 'assets/images/bottom_nav_search_on_icon.jpg';
  static String get searchOff => 'assets/images/bottom_nav_search_off_icon.jpg';
  static String get upload => 'assets/images/bottom_nav_upload_icon.jpg';
  static String get reelsOn => 'assets/images/bottom_nav_reels_on_icon.png';
  static String get reelsOff => 'assets/images/bottom_nav_reels_off_icon.png';
}
