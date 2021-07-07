import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stopgame_news/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => ThemeEvent.switchTheme(),
          child: Text('Сменить тему'),
        )
      )
    );
  }
}
