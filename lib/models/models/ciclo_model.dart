class Ciclo {
  String ciclo;
  String nivelEstudios;
  String requisito;
  String materia;
  String creditos;
  String id;

  Ciclo(
      {this.ciclo,
      this.nivelEstudios,
      this.requisito,
      this.materia,
      this.creditos,
      this.id});

  Ciclo.fromJson(Map<String, dynamic> json) {
    ciclo = json['ciclo'];
    nivelEstudios = json['nivelEstudios'];
    requisito = json['requisito'];
    materia = json['materia'];
    creditos = json['creditos'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ciclo'] = this.ciclo;
    data['nivelEstudios'] = this.nivelEstudios;
    data['requisito'] = this.requisito;
    data['materia'] = this.materia;
    data['creditos'] = this.creditos;
    data['id'] = this.id;
    return data;
  }
}
