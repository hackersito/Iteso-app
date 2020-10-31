class Credito {
  String area;
  String creditosRequeridos;
  String codigo;
  String creditosAprobados;
  String creditosBajaAcadem;
  String prioridad;
  String acumRepro;
  String escenario;
  String credPorCursar;
  String creditosRenuncia;
  String acumRenun;
  String credInscritos;
  String rowNum;
  String acumInscr;
  String credAprobados;
  String acumAprob;
  String acumBajac;
  String creditosInscritos;
  String creditosReprobados;
  String nivelAcademico;

  Credito(
      {this.area,
      this.creditosRequeridos,
      this.codigo,
      this.creditosAprobados,
      this.creditosBajaAcadem,
      this.prioridad,
      this.acumRepro,
      this.escenario,
      this.credPorCursar,
      this.creditosRenuncia,
      this.acumRenun,
      this.credInscritos,
      this.rowNum,
      this.acumInscr,
      this.credAprobados,
      this.acumAprob,
      this.acumBajac,
      this.creditosInscritos,
      this.creditosReprobados,
      this.nivelAcademico});

  Credito.fromJson(Map<String, dynamic> json) {
    area = json['area'];
    creditosRequeridos = json['creditosRequeridos'];
    codigo = json['codigo'];
    creditosAprobados = json['creditosAprobados'];
    creditosBajaAcadem = json['creditosBajaAcadem'];
    prioridad = json['prioridad'];
    acumRepro = json['acumRepro'];
    escenario = json['escenario'];
    credPorCursar = json['credPorCursar'];
    creditosRenuncia = json['creditosRenuncia'];
    acumRenun = json['acumRenun'];
    credInscritos = json['credInscritos'];
    rowNum = json['rowNum'];
    acumInscr = json['acumInscr'];
    credAprobados = json['credAprobados'];
    acumAprob = json['acumAprob'];
    acumBajac = json['acumBajac'];
    creditosInscritos = json['creditosInscritos'];
    creditosReprobados = json['creditosReprobados'];
    nivelAcademico = json['nivelAcademico'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['area'] = this.area;
    data['creditosRequeridos'] = this.creditosRequeridos;
    data['codigo'] = this.codigo;
    data['creditosAprobados'] = this.creditosAprobados;
    data['creditosBajaAcadem'] = this.creditosBajaAcadem;
    data['prioridad'] = this.prioridad;
    data['acumRepro'] = this.acumRepro;
    data['escenario'] = this.escenario;
    data['credPorCursar'] = this.credPorCursar;
    data['creditosRenuncia'] = this.creditosRenuncia;
    data['acumRenun'] = this.acumRenun;
    data['credInscritos'] = this.credInscritos;
    data['rowNum'] = this.rowNum;
    data['acumInscr'] = this.acumInscr;
    data['credAprobados'] = this.credAprobados;
    data['acumAprob'] = this.acumAprob;
    data['acumBajac'] = this.acumBajac;
    data['creditosInscritos'] = this.creditosInscritos;
    data['creditosReprobados'] = this.creditosReprobados;
    data['nivelAcademico'] = this.nivelAcademico;
    return data;
  }
}
