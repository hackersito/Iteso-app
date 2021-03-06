import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:iteso_app/internationalization/Translations.dart';
import 'dart:ui' as ui;

import 'app/controllers/db_controller.dart';
import 'app/routes/app_pages.dart';

void main() async {
  // ignore: await_only_futures
  await initDatabase();
  // Init locale
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

void initDatabase() async {
  // Init status bar color
  WidgetsFlutterBinding.ensureInitialized();
  FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
  FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  // Init the database
  await Get.putAsync(() => DbController().init());
}
