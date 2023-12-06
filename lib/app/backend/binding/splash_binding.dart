/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => SplashController(parser: Get.find()),
    );
  }
}
