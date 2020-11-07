import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iteso_app/utilities/material_color.dart';

class CustomColors {
  static final MaterialColor azulIteso =
      generateMaterialColor(Color(0xFF22489d));
  static final MaterialColor azulBajito =
      generateMaterialColor(Color(0x0FF1875c5));

  static final MaterialColor blancoLight =
      generateMaterialColor(Color(0xFFF5F5F5));
}

class Styles {
  static const textoBlanco = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w300,
  );

  static const textoBlancoSimple = const TextStyle(color: Colors.white);
}
