/* GlamGig */
import 'package:glamgig_stylist_flutter/app/backend/api/api.dart';
import 'package:glamgig_stylist_flutter/app/helper/shared_pref.dart';
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/util/constance.dart';

class SlotParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  SlotParser(
      {required this.sharedPreferencesManager, required this.apiService});

  Future<Response> getSlots() async {
    return apiService.postPrivate(
        AppConstants.getTimeSlotById,
        {"id": sharedPreferencesManager.getString('uid')},
        sharedPreferencesManager.getString('token') ?? '');
  }

  Future<Response> onUpdateSlots(dynamic body) async {
    var response = await apiService.postPrivate(AppConstants.updateSlot, body,
        sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> destroyTimeSlot(var body) async {
    var response = await apiService.postPrivate(AppConstants.destroyTimeSlot,
        body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }
}
