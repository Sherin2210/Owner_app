/* GlamGig */
import 'package:glamgig_stylist_flutter/app/backend/api/api.dart';
import 'package:glamgig_stylist_flutter/app/helper/shared_pref.dart';
import 'package:glamgig_stylist_flutter/app/util/constance.dart';

class LanguagesParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  LanguagesParser(
      {required this.sharedPreferencesManager, required this.apiService});

  void saveLanguage(String code) {
    sharedPreferencesManager.putString('language', code);
  }

  String getDefault() {
    return sharedPreferencesManager.getString('language') ??
        AppConstants.defaultLanguageApp;
  }
}
