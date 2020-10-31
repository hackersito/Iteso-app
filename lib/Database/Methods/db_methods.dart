import '../database.dart';

abstract class DbMethods {
  Future<void> save(AppDatabase db) async {}

  Future<void> update(AppDatabase db) async {}

  Future<void> delete(AppDatabase db) async {}
}
