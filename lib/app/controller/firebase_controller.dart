/* GlamGig */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/backend/parse/firebase_parse.dart';
import 'package:glamgig_stylist_flutter/app/controller/login_controller.dart';
import 'package:glamgig_stylist_flutter/app/controller/signup_controller.dart';

class FirebaseController extends GetxController implements GetxService {
  final FirebaseParser parser;
  String countryCode = '';
  String phoneNumber = '';
  String apiURL = '';
  bool haveClicked = false;
  String from = '';
  FirebaseController({required this.parser});

  @override
  void onInit() async {
    super.onInit();
    apiURL = parser.apiService.appBaseUrl;
    countryCode = Get.arguments[0];
    phoneNumber = Get.arguments[1];
    from = Get.arguments[2];
  }

  void onLogin() {
    if (from == 'register') {
      Get.find<SignUpController>().verifyPhoneFromFirebase();
    } else if (from == 'login') {
      Get.find<LoginController>().loginWithPhoneToken();
    }
    onBack();
  }

  void onBack() {
    var context = Get.context as BuildContext;
    Navigator.of(context).pop(true);
  }
}
