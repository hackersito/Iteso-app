import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        //Translations log in page
        "en_US": {
          "welcome": "Welcome Back.",
          "text_login": "Log in and let's start",
          "username": "Username",
          "pass": "Password",
          "login": "Login",
          "forgot_pass": "Forgot Password"
        },
        "es_MX": {
          "welcome": "Bienvenido de regreso.",
          "text_logging": "Inicia sesión y empecemos",
          "username": "Nombre de usuario",
          "pass": "Contraseña",
          "login": "Entrar",
          "forgot_pass": "Olvide mi contraseña"
        },
      };
}
