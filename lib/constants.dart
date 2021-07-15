import 'package:flutter/material.dart';

const Color darkStopgameColor = const Color.fromARGB(255, 22, 27, 29);
const Color redStopgameColor = const Color.fromARGB(255, 236, 29, 36);

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.grey.shade100,
  primaryColor: redStopgameColor,
  accentColor: redStopgameColor
);

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: darkStopgameColor,
  primaryColor: redStopgameColor,
  accentColor: redStopgameColor
);