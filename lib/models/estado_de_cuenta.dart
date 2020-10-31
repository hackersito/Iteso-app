class EstadoDeCuenta {
  String tipoCambio;
  String fechaVence;
  String importeMx;
  String moneda;
  String nombreConcepto;
  String id;
  String nivelAcademico;
  String importe;
  String periodoEscolar;

  EstadoDeCuenta(
      {this.tipoCambio,
      this.fechaVence,
      this.importeMx,
      this.moneda,
      this.nombreConcepto,
      this.id,
      this.nivelAcademico,
      this.importe,
      this.periodoEscolar});

  EstadoDeCuenta.fromJson(Map<String, dynamic> json) {
    tipoCambio = json['tipoCambio'];
    fechaVence = json['fechaVence'];
    importeMx = json['importeMx'];
    moneda = json['moneda'];
    nombreConcepto = json['nombreConcepto'];
    id = json['id'];
    nivelAcademico = json['nivelAcademico'];
    importe = json['importe'];
    periodoEscolar = json['periodoEscolar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tipoCambio'] = this.tipoCambio;
    data['fechaVence'] = this.fechaVence;
    data['importeMx'] = this.importeMx;
    data['moneda'] = this.moneda;
    data['nombreConcepto'] = this.nombreConcepto;
    data['id'] = this.id;
    data['nivelAcademico'] = this.nivelAcademico;
    data['importe'] = this.importe;
    data['periodoEscolar'] = this.periodoEscolar;
    return data;
  }
}
