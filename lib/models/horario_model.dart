class Horario {
  Horario({
    this.tipoEspacio,
    this.asignatura,
    this.numSemana,
    this.nombreProfesor,
    this.grupo,
    this.idioma,
    this.horaInicio,
    this.horaFin,
    this.fecha,
    this.nombreDia,
    this.nombreMes,
    this.horaInicioFin,
    this.id,
    this.salon,
  });

  final String tipoEspacio;
  final String asignatura;
  final String numSemana;
  final String nombreProfesor;
  final String grupo;
  final String idioma;
  final DateTime horaInicio;
  final DateTime horaFin;
  final String fecha;
  final String nombreDia;
  final String nombreMes;
  final String horaInicioFin;
  final String id;
  final String salon;

  factory Horario.fromMap(Map<String, dynamic> json) => Horario(
        tipoEspacio: json["tipoEspacio"],
        asignatura: json["asignatura"],
        numSemana: json["numSemana"],
        nombreProfesor: json["nombreProfesor"],
        grupo: json["grupo"],
        idioma: json["idioma"],
        horaInicio: DateTime.parse(json["horaInicio"]),
        horaFin: DateTime.parse(json["horaFin"]),
        fecha: json["fecha"],
        nombreDia: json["nombreDia"],
        nombreMes: json["nombreMes"],
        horaInicioFin: json["horaInicioFin"],
        id: json["id"],
        salon: json["salon"],
      );

  Map<String, dynamic> toMap() => {
        "tipoEspacio": tipoEspacio,
        "asignatura": asignatura,
        "numSemana": numSemana,
        "nombreProfesor": nombreProfesor,
        "grupo": grupo,
        "idioma": idioma,
        "horaInicio": horaInicio.toIso8601String(),
        "horaFin": horaFin.toIso8601String(),
        "fecha": fecha,
        "nombreDia": nombreDia,
        "nombreMes": nombreMes,
        "horaInicioFin": horaInicioFin,
        "id": id,
        "salon": salon,
      };
}
