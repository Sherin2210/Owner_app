/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/services_categories_controller.dart';

class ServicesCategoriesBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => ServicesCategoriesController(parser: Get.find()),
    );
  }
}
