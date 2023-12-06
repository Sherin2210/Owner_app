/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/packages_categories_controller.dart';

class PackagesCategoriesBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => PackagesCategoriesController(parser: Get.find()),
    );
  }
}
