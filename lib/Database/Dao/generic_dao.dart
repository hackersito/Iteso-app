import 'package:floor/floor.dart';

@dao
abstract class GenericDao<T> {
  @update
  Future<void> updateItem(T varT);

  @insert
  Future<int> insertItem(T varT);

  @delete
  Future<void> deleteItem(T varT);

  @insert
  Future<List<int>> insertItems(List<T> varT);

  @delete
  Future<void> deleteItems(List<T> varT);
}
