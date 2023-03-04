import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: Color.fromARGB(24, 235, 226, 52),
  100: const Color.fromRGBO(250, 172, 24, .2),
  200: const Color.fromRGBO(250, 172, 24, .3),
  300: const Color.fromRGBO(250, 172, 24, .4),
  400: const Color.fromRGBO(250, 172, 24, .5),
  500: const Color.fromRGBO(250, 172, 24, .6),
  600: const Color.fromRGBO(250, 172, 24, .7),
  700: const Color.fromRGBO(250, 172, 24, .8),
  800: const Color.fromRGBO(250, 172, 24, .9),
  900: const Color.fromRGBO(250, 172, 24, 1),
};

abstract class CustomColors {
  static Color customContrastColor = Colors.brown.shade700;
  static MaterialColor customSwatchColor =
      MaterialColor(0xFFFAAC18, _swatchOpacity);
}
