import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:iteso_app/models/login_model.dart';

class Network {
  static Future<http.Response> fetchData(String url, Map<String, String> body) {
    return http.post(
        "https://webtest.iteso.mx/ItesoMovil-web/WebServices" + url,
        headers: {"Content-Type": "application/json"},
        body: body.toString());
  }

  static Future<Login> login(String user, String pass) async {
    return await fetchData("/tokenWS/private/accesorest/", {
      "usuario": user,
      "contrasena": pass
    }).then((value) => Login.fromJson(jsonDecode(value.body)));
  }
}
