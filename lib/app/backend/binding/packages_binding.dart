/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/packages_controller.dart';

class PackagesBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => PackagesController(parser: Get.find()),
    );
  }
}
