import 'package:get/get.dart';
import 'package:iteso_app/Database/database.dart';

class DbController extends GetxService {
  AppDatabase db;

  Future<DbController> init() async {
    db = await $FloorAppDatabase.databaseBuilder("db").build();
    return this;
  }
}
