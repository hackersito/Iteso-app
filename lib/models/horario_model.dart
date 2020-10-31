class Horario {
  String tipoEspacio;
  String asignatura;
  String numSemana;
  String grupo;
  String nombreProfesor;
  String idioma;
  String horaInicio;
  String horaFin;
  String fecha;
  String nombreDia;
  String nombreMes;
  String horaInicioFin;
  String id;
  String salon;

  Horario(
      {this.tipoEspacio,
      this.asignatura,
      this.numSemana,
      this.grupo,
      this.nombreProfesor,
      this.idioma,
      this.horaInicio,
      this.horaFin,
      this.fecha,
      this.nombreDia,
      this.nombreMes,
      this.horaInicioFin,
      this.id,
      this.salon});

  Horario.fromJson(Map<String, dynamic> json) {
    tipoEspacio = json['tipoEspacio'];
    asignatura = json['asignatura'];
    numSemana = json['numSemana'];
    grupo = json['grupo'];
    nombreProfesor = json['nombreProfesor'];
    idioma = json['idioma'];
    horaInicio = json['horaInicio'];
    horaFin = json['horaFin'];
    fecha = json['fecha'];
    nombreDia = json['nombreDia'];
    nombreMes = json['nombreMes'];
    horaInicioFin = json['horaInicioFin'];
    id = json['id'];
    salon = json['salon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['tipoEspacio'] = this.tipoEspacio;
    data['asignatura'] = this.asignatura;
    data['numSemana'] = this.numSemana;
    data['grupo'] = this.grupo;
    data['nombreProfesor'] = this.nombreProfesor;
    data['idioma'] = this.idioma;
    data['horaInicio'] = this.horaInicio;
    data['horaFin'] = this.horaFin;
    data['fecha'] = this.fecha;
    data['nombreDia'] = this.nombreDia;
    data['nombreMes'] = this.nombreMes;
    data['horaInicioFin'] = this.horaInicioFin;
    data['id'] = this.id;
    data['salon'] = this.salon;
    return data;
  }
}
