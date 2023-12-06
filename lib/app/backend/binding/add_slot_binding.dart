/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/add_slot_controller.dart';

class AddSlotBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => AddSlotController(parser: Get.find()),
    );
  }
}
