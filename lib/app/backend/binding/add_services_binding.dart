/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/add_services_controller.dart';

class AddServicesBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => AddServicesController(parser: Get.find()),
    );
  }
}
