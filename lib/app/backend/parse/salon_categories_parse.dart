/* GlamGig */
import 'package:glamgig_stylist_flutter/app/backend/api/api.dart';
import 'package:glamgig_stylist_flutter/app/helper/shared_pref.dart';
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/util/constance.dart';

class SalonCategoriesParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  SalonCategoriesParser(
      {required this.sharedPreferencesManager, required this.apiService});

  Future<Response> selectCategories() async {
    var response = await apiService.getPrivate(AppConstants.categories,
        sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> updateCate(String cateIds) async {
    var response = await apiService.postPrivate(
        AppConstants.salonUpdate,
        {"id": sharedPreferencesManager.getString('id'), "categories": cateIds},
        sharedPreferencesManager.getString('token') ?? '');
    return response;
  }
}
