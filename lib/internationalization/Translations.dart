import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "welcome": "Welcome.",
          "text_logging": "Log in",
        },
        "es_MX": {
          "welcome": "Bienvenidos.",
          "text_logging": "Inicia sesión",
        },
      };
}
