/* GlamGig */
import 'package:glamgig_stylist_flutter/app/backend/api/api.dart';
import 'package:glamgig_stylist_flutter/app/helper/shared_pref.dart';
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/util/constance.dart';

class PackagesSpecialistParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  PackagesSpecialistParser(
      {required this.sharedPreferencesManager, required this.apiService});

  Future<Response> getBySalonId(var body) async {
    var response = await apiService.postPrivate(AppConstants.getBySalonId, body,
        sharedPreferencesManager.getString('token') ?? '');
    return response;
  }
}
