/* GlamGig */
import 'package:glamgig_stylist_flutter/app/backend/api/api.dart';
import 'package:glamgig_stylist_flutter/app/helper/shared_pref.dart';
import 'package:glamgig_stylist_flutter/app/util/constance.dart';
import 'package:get/get.dart';

class ShopCategoriesParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  ShopCategoriesParser(
      {required this.sharedPreferencesManager, required this.apiService});

  Future<Response> getAllProductsCate() async {
    var response = await apiService.getPrivate(AppConstants.getAllProductsCate,
        sharedPreferencesManager.getString('token') ?? '');
    return response;
  }
}
