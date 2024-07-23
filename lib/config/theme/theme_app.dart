import 'package:flutter/material.dart';

final colors = <Color>[
  const Color.fromARGB(255, 0, 140, 255),
  const Color.fromRGBO(0, 255, 8, 1),
];

class ThemeApp {
  ThemeData getTheme(selectedColor) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorSchemeSeed: colors[selectedColor],
    );
  }
}
