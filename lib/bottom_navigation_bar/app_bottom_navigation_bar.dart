import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stopgame_news/constants.dart';

import 'navigation_cubit.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return BottomNavyBar(
      onItemSelected: (index) => context.read<NavigationCubit>().emit(index),
      selectedIndex: context.watch<NavigationCubit>().state,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      containerHeight: 60,
      iconSize: 30,
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(CupertinoIcons.news_solid),
          title: Text('Новости'),
          activeColor: redStopgameColor,
          textAlign: TextAlign.center
        ),
        BottomNavyBarItem(
          icon: Icon(CupertinoIcons.gear_solid),
          title: Text('Настройки'),
          activeColor: redStopgameColor,
          textAlign: TextAlign.center
        )
      ],
    );
  }
}
