/* GlamGig */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/helper/init.dart';
import 'package:glamgig_stylist_flutter/app/helper/router.dart';
import 'package:glamgig_stylist_flutter/app/util/constance.dart';
import 'package:glamgig_stylist_flutter/app/util/theme.dart';
import 'package:glamgig_stylist_flutter/app/util/translator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MainBinding().dependencies();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
      name: 'glamgig');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConstants.appName,
      color: ThemeProvider.appColor,
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.key,
      initialRoute: AppRouter.splash,
      getPages: AppRouter.routes,
      defaultTransition: Transition.native,
      translations: LocaleString(),
      locale: const Locale('en', 'US'),
    );
  }
}
