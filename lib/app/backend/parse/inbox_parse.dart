/* GlamGig */
import 'package:glamgig_stylist_flutter/app/backend/api/api.dart';
import 'package:glamgig_stylist_flutter/app/helper/shared_pref.dart';
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/util/constance.dart';

class InboxParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  InboxParser(
      {required this.sharedPreferencesManager, required this.apiService});

  String getUID() {
    return sharedPreferencesManager.getString('uid') ?? '';
  }

  Future<Response> getChatConversion(var uid) async {
    return await apiService.postPrivate(AppConstants.getChatConversionList,
        {'id': uid}, sharedPreferencesManager.getString('token') ?? '');
  }
}
