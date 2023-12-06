/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/signup_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => SignUpController(parser: Get.find()),
    );
  }
}
