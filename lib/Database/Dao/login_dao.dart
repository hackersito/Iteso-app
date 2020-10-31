import 'package:floor/floor.dart';
import 'package:iteso_app/Database/Dao/generic_dao.dart';
import 'package:iteso_app/models/login_model.dart';

@dao
abstract class LoginDao extends GenericDao<Login> {
  @Query("SELECT * FROM Login")
  Future<Login> getLogin();
}
