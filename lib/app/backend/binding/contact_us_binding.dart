/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/contact_us_controller.dart';

class ContactUsBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => ContactUsController(parser: Get.find()),
    );
  }
}
