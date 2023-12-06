/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/review_controller.dart';

class ReviewBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => ReviewController(parser: Get.find()),
    );
  }
}
