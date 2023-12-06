/* GlamGig */
import 'package:glamgig_stylist_flutter/app/backend/api/api.dart';
import 'package:glamgig_stylist_flutter/app/helper/shared_pref.dart';
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/util/constance.dart';

class ServicesParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  ServicesParser(
      {required this.sharedPreferencesManager, required this.apiService});

  Future<Response> getServices(var body) async {
    var response = await apiService.postPrivate(AppConstants.getMyServices,
        body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> servicesDestroy(var body) async {
    var response = await apiService.postPrivate(AppConstants.servicesDestroy,
        body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  String getFreelancerId() {
    return sharedPreferencesManager.getString('uid') ?? '';
  }

  Future<Response> onUpdateServices(var body) async {
    var response = await apiService.postPrivate(AppConstants.updateService,
        body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  String getCurrencyCode() {
    return sharedPreferencesManager.getString('currencyCode') ??
        AppConstants.defaultCurrencyCode;
  }

  String getCurrencySide() {
    return sharedPreferencesManager.getString('currencySide') ??
        AppConstants.defaultCurrencySide;
  }

  String getCurrencySymbol() {
    return sharedPreferencesManager.getString('currencySymbol') ??
        AppConstants.defaultCurrencySymbol;
  }
}
