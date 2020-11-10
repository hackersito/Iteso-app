import 'package:floor/floor.dart';
import 'package:iteso_app/models/horario_model.dart';

import 'generic_dao.dart';

@dao
abstract class HorarioDao extends GenericDao<Horario> {
  @Query('SELECT * FROM Horario WHERE date(horaInicio) = :date')
  Stream<List<Horario>> getHorarioDay(String date);

  @Query('SELECT * FROM Horario')
  Stream<List<Horario>> getAll();
}
