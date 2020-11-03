import 'dart:convert';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:iteso_app/models/login_model.dart';
import 'package:url_launcher/url_launcher.dart';

class Network {
  static const String _urlPrivacy = "https://datospersonales.iteso.mx";
  static Future<http.Response> fetchData(String url, Map<String, String> body) {
    return http.post(
        "https://webtest.iteso.mx/ItesoMovil-web/WebServices" + url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(body));
  }

  static Future<Login> login(String user, String pass) async {
    return fetchData("/tokenWS/private/accesorest/",
            {"usuario": user, "contrasena": pass})
        .then((value) => Login.fromJson(jsonDecode(value.body)))
        .catchError((error) {
      Get.printError(info: error.toString());
    });
  }

  static final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'esi@iteso.mx',
  );

  static void launchUrl() {
    _launchUrl(_urlPrivacy, "err_url");
  }

  static void launchEmail() {
    _launchUrl(_emailLaunchUri.toString(), "err_email");
  }

  static Future<void> _launchUrl(String uri, String error) async {
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      Get.snackbar("error".tr, error.tr);
    }
  }
}
