/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/calendar_controller.dart';

class CalendarsBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => CalendarsController(parser: Get.find()),
    );
  }
}
