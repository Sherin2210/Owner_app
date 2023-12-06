/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/packages_specialist_controller.dart';

class PackagesSpecialistBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => PackagesSpecialistController(parser: Get.find()),
    );
  }
}
