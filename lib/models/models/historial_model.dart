class Historial {
  String area;
  String cicloSugerido;
  String asignatura;
  String calificacion;
  String codigo;
  String superArea;
  String etiqueta;
  String alumnoId;
  String periodoEsc;
  String creditos;
  String id;
  String nivelAcademico;
  String ultimperiodo;

  Historial(
      {this.area,
      this.cicloSugerido,
      this.asignatura,
      this.calificacion,
      this.codigo,
      this.superArea,
      this.etiqueta,
      this.alumnoId,
      this.periodoEsc,
      this.creditos,
      this.id,
      this.nivelAcademico,
      this.ultimperiodo});

  Historial.fromJson(Map<String, dynamic> json) {
    area = json['area'];
    cicloSugerido = json['cicloSugerido'];
    asignatura = json['asignatura'];
    calificacion = json['calificacion'];
    codigo = json['codigo'];
    superArea = json['superArea'];
    etiqueta = json['etiqueta'];
    alumnoId = json['alumnoId'];
    periodoEsc = json['periodoEsc'];
    creditos = json['creditos'];
    id = json['id'];
    nivelAcademico = json['nivelAcademico'];
    ultimperiodo = json['ultimperiodo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['area'] = this.area;
    data['cicloSugerido'] = this.cicloSugerido;
    data['asignatura'] = this.asignatura;
    data['calificacion'] = this.calificacion;
    data['codigo'] = this.codigo;
    data['superArea'] = this.superArea;
    data['etiqueta'] = this.etiqueta;
    data['alumnoId'] = this.alumnoId;
    data['periodoEsc'] = this.periodoEsc;
    data['creditos'] = this.creditos;
    data['id'] = this.id;
    data['nivelAcademico'] = this.nivelAcademico;
    data['ultimperiodo'] = this.ultimperiodo;
    return data;
  }
}
