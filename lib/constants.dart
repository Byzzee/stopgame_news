import 'package:flutter/material.dart';

const Color _darkStopgameColor = const Color.fromARGB(255, 22, 27, 29);
const Color _redStopgameColor = const Color.fromARGB(255, 236, 29, 36);

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.grey.shade100,
  primaryColor: _redStopgameColor,
);

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: _darkStopgameColor,
  primaryColor: _redStopgameColor,
);