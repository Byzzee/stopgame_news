import 'package:flutter/material.dart';
import 'package:stopgame_news/theme/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    ThemeState themeState  = context.watch<ThemeBLoC>().state;
    Color mainColor;

    if (themeState is LightThemeState) mainColor = Colors.black.withOpacity(0.6);
    else mainColor = Colors.white.withOpacity(0.6);
    
    return Container(
      height: _height,
      width: _width,
      child: Column(
        children: [
          Spacer(),
          FractionallySizedBox(
            widthFactor: 0.75,
            child: Image.asset('assets/error.png')
          ),
          Text(
            'Упс... Возникла ошибка',
            style: TextStyle(
              color: mainColor,
              fontWeight: FontWeight.bold,
              fontSize: 18
            )
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Сегодня без новостей :(',
            style: TextStyle(
              color: mainColor.withAlpha(96),
              fontWeight: FontWeight.w400,
              fontSize: 16
            )
          ),
          Spacer(flex: 2)
        ],
      )
    );
  }
}