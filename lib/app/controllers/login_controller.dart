import 'package:get/get.dart';
import 'package:iteso_app/app/routes/app_pages.dart';
import 'package:iteso_app/models/login_model.dart';

class LoginController extends GetxService {
  final Login login;

  LoginController(this.login);
  @override
  void onInit() {
    super.onInit();
    Get.offNamed(Routes.MENU);
  }
}
