import 'package:flutter_instargram_clone/src/controller/bottom_nav_controller.dart';
import 'package:get/get.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavController());
  }
}
