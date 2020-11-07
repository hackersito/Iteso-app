import 'dart:async';

import 'package:floor/floor.dart';
import 'package:iteso_app/Database/Dao/login_dao.dart';
import 'package:iteso_app/models/converters/datetime_converter.dart';
import 'package:iteso_app/models/horario_model.dart';
import 'package:iteso_app/models/login_model.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'Dao/horario_dao.dart';

part 'database.g.dart';

@TypeConverters([DateTimeConverter])
@Database(version: 1, entities: [Login, Horario])
abstract class AppDatabase extends FloorDatabase {
  LoginDao get loginDao;
  HorarioDao get horarioDao;
}
