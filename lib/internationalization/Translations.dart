import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        // English

        // Translations login page
        "en_US": {
          "welcome": "Welcome Back.",
          "text_login": "Log in and let's start",
          "username": "Account",
          "pass": "Password",
          "login": "Login",
          "forgot_pass": "Forgot Password",
          "privacy": "Privacy Notice",
          "services": "ITESO Services",
          "err_user": "Enter valid account",
          "err_pass": "Enter valid password",
          "bad_pass": "The account or password you\'ve entered is incorrect",
          "error": "Error",
          "err_url": "Error launching url",
          "err_email": "Error sending email",
          // Iteso services
          "transport": "ITESO University Transport",
        },

        // Spanish

        // Translations login page
        "es_MX": {
          "welcome": "Bienvenido de  nuevo.",
          "text_login": "Inicia sesión y empecemos",
          "username": "Cuenta",
          "pass": "Contraseña",
          "login": "Entrar",
          "forgot_pass": "Olvidé mi contraseña",
          "privacy": "Aviso de Privacidad",
          "services": "Servicios ITESO",
          "err_user": "Ingrese un usuario válido",
          "err_pass": "Ingrese una contraseña válida",
          "bad_pass": "La cuenta o contraseña que ingresaste es incorrecta",
          "error": "Error",
          "err_url": "Error al abrir url",
          "err_email": "Error al mandar email",
          // Iteso services
          "transport": "Transporte Universitario ITESO",
        },
      };
}
