/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/salon_categories_controller.dart';

class SalonCategoriesBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => SalonCategoriesController(parser: Get.find()),
    );
  }
}
