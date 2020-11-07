import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:iteso_app/internationalization/Translations.dart';
import 'dart:ui' as ui;

import 'Database/database.dart';
import 'app/controllers/db_controller.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
  FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  AppDatabase db = await $FloorAppDatabase.databaseBuilder("db").build();
  Get.lazyPut(() => DbController(db));
  //Get.updateLocale(Locale("es", "MX"));
  Get.updateLocale(ui.window.locale);
  initializeDateFormatting().then((_) => runApp(
        GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Application",
          translations: AppTranslations(),
          fallbackLocale: Locale("es", "MX"),
          locale: Get.locale,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
        ),
      ));
}
