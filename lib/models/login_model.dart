import 'package:floor/floor.dart';
import 'package:iteso_app/Database/Methods/db_methods.dart';

@entity
class Login implements DbMethods {
  @primaryKey
  String token;

  Login({this.token});

  Login.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['token'] = this.token;
    return data;
  }

  @override
  Future<void> delete(db) async {
    db.loginDao.deleteItem(this);
  }

  @override
  Future<void> save(db) async {
    db.loginDao.insertItem(this);
  }

  @override
  Future<void> update(db) async {
    db.loginDao.updateItem(this);
  }
}
