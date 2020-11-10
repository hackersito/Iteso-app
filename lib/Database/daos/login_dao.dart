import 'package:floor/floor.dart';
import 'package:iteso_app/models/login_model.dart';

import 'generic_dao.dart';

@dao
abstract class LoginDao extends GenericDao<Login> {
  @Query("SELECT * FROM Login")
  Future<Login> getLogin();
}
