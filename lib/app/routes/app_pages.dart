import 'package:iteso_app/app/modules/servicios_iteso/views/servicios_iteso_view.dart';
import 'package:iteso_app/app/modules/menu/views/menu_view.dart';
import 'package:iteso_app/app/modules/menu/bindings/menu_binding.dart';
import 'package:iteso_app/app/modules/home/views/home_view.dart';
import 'package:iteso_app/app/modules/home/bindings/home_binding.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.MENU,
      page: () => MenuView(),
      binding: MenuBinding(),
    ),
    GetPage(
      name: Routes.SERVICIOS_ITESO,
      page: () => ServiciosItesoView(),
    ),
  ];
}
