import 'package:get/get.dart';
import 'package:iteso_app/models/login_model.dart';

class LoginController extends GetxService {
  final Login login;

  LoginController(this.login);
  @override
  void onInit() {
    super.onInit();
    Get.snackbar("Exito", "Loggeado correctamente");
  }
}
