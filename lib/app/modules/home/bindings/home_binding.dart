import 'package:get/get.dart';
import 'package:iteso_app/app/controllers/db_controller.dart';
import 'package:iteso_app/app/controllers/login_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() async {
    final db = Get.find<DbController>();
    final login = await db.db.loginDao.getLogin();
    if (!GetUtils.isNullOrBlank(login?.token)) {
      Get.put(LoginController(login));
    }
  }
}
