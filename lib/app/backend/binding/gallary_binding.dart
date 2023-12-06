/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/gallary_controller.dart';

class GallaryBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => GallaryController(parser: Get.find()),
    );
  }
}
