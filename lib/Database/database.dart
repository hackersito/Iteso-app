import 'dart:async';

import 'package:floor/floor.dart';
import 'package:iteso_app/Database/Dao/login_dao.dart';
import 'package:iteso_app/models/login_model.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 1, entities: [Login])
abstract class AppDatabase extends FloorDatabase {
  LoginDao get loginDao;
}
