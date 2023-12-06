/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/cities_categories_controller.dart';

class CitiesCategoriesBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => CitiesCategoriesController(parser: Get.find()),
    );
  }
}
