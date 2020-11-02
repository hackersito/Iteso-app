import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:get/get.dart';
import 'package:iteso_app/internationalization/Translations.dart';
import 'dart:ui' as ui;

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
  FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
  FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  debugPrint(ui.window.locale.toString());
  runApp(
    GetMaterialApp(
      title: "Application",
      translations: AppTranslations(),
      fallbackLocale: Locale("es", "MX"),
      locale: ui.window.locale,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
