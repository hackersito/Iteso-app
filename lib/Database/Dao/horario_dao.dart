import 'package:floor/floor.dart';
import 'package:iteso_app/models/horario_model.dart';

import 'generic_dao.dart';

@dao
abstract class HorarioDao extends GenericDao<Horario> {
  @Query(
      'SELECT * FROM Horario WHERE strftime("%d", horaInicio, "unixepoch") = :day AND strftime("%m", horaInicio, "unixepoch") = :month AND strftime("%y", horaInicio, "unixepoch") = :year')
  Future<List<Horario>> getHorarioDay(String day, String month, String year);

  @Query('SELECT * FROM Horario')
  Future<List<Horario>> getAll();
}
