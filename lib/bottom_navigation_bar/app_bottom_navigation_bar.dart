import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stopgame_news/constants.dart';
import 'navigation_cubit.dart';

class AppBottomNavigationBar extends StatelessWidget {
  AppBottomNavigationBar({Key? key, required this.pageViewController, required this.scrollController})
      : super(key: key);
  final PageController pageViewController;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
   return BottomNavyBar(
      onItemSelected: (index) {
        NavigationCubit cubit = context.read<NavigationCubit>();
        if (cubit.state != index) {
          cubit.emit(index);
          pageViewController.animateToPage(
            cubit.state,
            duration: Duration(milliseconds: 250),
            curve: Curves.linear
          );
        }
        // TODO: Scroll-to-top на всех страницах
        else scrollController.animateTo(
          0,
          duration: Duration(milliseconds: 250),
          curve: Curves.linear
        );
      },
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
          icon: Icon(FontAwesomeIcons.youtube),
          title: Text('Видео'),
          activeColor: redStopgameColor,
          textAlign: TextAlign.center
        ),
        /*BottomNavyBarItem(
          icon: Icon(FontAwesomeIcons.twitch),
          title: Text('Стримы'),
          activeColor: redStopgameColor,
          textAlign: TextAlign.center
        ),*/
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
