/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/stylist_controller.dart';

class StylistBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => StylistController(parser: Get.find()),
    );
  }
}
