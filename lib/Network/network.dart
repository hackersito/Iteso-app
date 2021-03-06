import 'dart:convert';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:iteso_app/app/controllers/login_controller.dart';
import 'package:iteso_app/models/login_model.dart';
import 'package:url_launcher/url_launcher.dart';

class Network {
  static const String URL_PRIVACY = "https://datospersonales.iteso.mx";
  static const String URL_HORARIO = '/WebServiceREST/horarioescolar/';
  static Future<http.Response> fetchData(String url, Map<String, String> body) {
    return http.post(Uri.https("https://apps.iteso.mx/ItesoMovil-web/WebServices",url),
        headers: {"Content-Type": "application/json"}, body: jsonEncode(body));
  }

  static Future<Login> login(String user, String pass) async {
    return http
        .post(
            Uri.https("https://webtest.iteso.mx/ItesoMovil-web/WebServices/tokenWS/private/accesorest","/cls"),
            headers: {"Content-Type": "application/json"},
            body: jsonEncode({"usuario": user, "contrasena": pass}))
        .then((value) => Login.fromJson(jsonDecode(value.body)))
        .catchError((error) {
      Get.printError(info: error.toString());
    });
  }

  static Future<http.Response> getData(String url, String urlParams) async {
    final String token = Get.find<LoginController>().login.token;
    return fetchData(url + token + urlParams, {});
  }

  static final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'esi@iteso.mx',
  );

  static void launchEmail() {
    launchUrl(_emailLaunchUri.toString(), "err_email");
  }

  static Future<void> launchUrl(String uri, String error) async {
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      Get.snackbar("error".tr, error.tr);
    }
  }
}
