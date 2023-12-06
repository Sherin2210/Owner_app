/* GlamGig */
import 'package:glamgig_stylist_flutter/app/backend/api/api.dart';
import 'package:glamgig_stylist_flutter/app/helper/shared_pref.dart';
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/util/constance.dart';

class RegisterCategoriesParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  RegisterCategoriesParser(
      {required this.apiService, required this.sharedPreferencesManager});

  Future<Response> getAllServedCategory() async {
    var response = await apiService.getPublic(
      AppConstants.getActiveCategories,
    );
    return response;
  }
}
