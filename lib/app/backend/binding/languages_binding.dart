/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/controller/languages_controller.dart';

class LanguagesBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => LanguagesController(parser: Get.find()),
    );
  }
}
