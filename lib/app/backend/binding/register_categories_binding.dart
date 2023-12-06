/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/register_categories_controller.dart';

class RegisterCategoriesBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => RegisterCategoriesController(parser: Get.find()),
    );
  }
}
