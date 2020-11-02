import 'dart:convert';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:iteso_app/models/login_model.dart';

class Network {
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
}
