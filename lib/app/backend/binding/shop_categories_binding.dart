/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/shop_categories_controller.dart';

class ShopCategoriesBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => ShopCategoriesController(parser: Get.find()),
    );
  }
}
