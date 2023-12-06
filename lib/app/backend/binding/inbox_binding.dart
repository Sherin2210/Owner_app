/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/inbox_controller.dart';

class InboxBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => InboxController(parser: Get.find()),
    );
  }
}
