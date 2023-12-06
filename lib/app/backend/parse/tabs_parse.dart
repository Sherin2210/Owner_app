/* GlamGig */
import 'package:glamgig_stylist_flutter/app/backend/api/api.dart';
import 'package:glamgig_stylist_flutter/app/helper/shared_pref.dart';

class TabsParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  TabsParser(
      {required this.sharedPreferencesManager, required this.apiService});
}
