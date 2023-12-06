/* GlamGig */
import 'package:glamgig_stylist_flutter/app/backend/api/api.dart';
import 'package:glamgig_stylist_flutter/app/helper/shared_pref.dart';
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/util/constance.dart';

class ReviewParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  ReviewParser(
      {required this.sharedPreferencesManager, required this.apiService});

  Future<Response> getMyReviews() async {
    var response = await apiService.postPublic(AppConstants.getMyReviews,
        {"id": sharedPreferencesManager.getString('uid')});
    return response;
  }
}
