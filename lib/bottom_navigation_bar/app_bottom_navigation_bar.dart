import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stopgame_news/bottom_navigation_bar/navigation_button.dart';
import 'package:stopgame_news/theme_bloc.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    ThemeState themeState  = context.watch<ThemeBLoC>().state;
    Color mainColor;

    if (themeState is LightThemeState) mainColor = Colors.black.withOpacity(0.6);
    else mainColor = Colors.white.withOpacity(0.6);

    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          height: height * 0.1,
          width: double.infinity,
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavigationButton(
                  index: 1,
                  text: 'Новости',
                  color: mainColor,
                  inactiveIcon: CupertinoIcons.news,
                  activeIcon: CupertinoIcons.news_solid,
                ),
                NavigationButton(
                  index: 2,
                  text: 'Настройки',
                  color: mainColor,
                  inactiveIcon: CupertinoIcons.gear,
                  activeIcon: CupertinoIcons.gear_solid,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 2,
          width: double.infinity,
          color: mainColor,
        )
      ],
    );
  }
}
