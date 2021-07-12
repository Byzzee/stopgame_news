import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stopgame_news/bottom_navigation_bar/navigation_cubit.dart';
import 'package:stopgame_news/constants.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({Key? key, @required this.index, @required this.text, @required this.icon, @required this.color}) : super(key: key);

  final int? index;
  final Color? color;
  final String? text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    if (context.watch<NavigationCubit>().state == index) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () => context.read<NavigationCubit>().emit(index ?? 0),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: Icon(
              icon,
              size: 33,
              color: redStopgameColor,
            )
          ),
          Text(
            text ?? '',
            style: TextStyle(
              color: redStopgameColor,
              fontSize: 13
            ),
          )
        ],
      );
    } else {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () => context.read<NavigationCubit>().emit(index ?? 0),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: Icon(
              icon,
              size: 32,
              color: color,
            )
          ),
          Text(
            text ?? '',
            style: TextStyle(
              color: color,
              fontSize: 12
            ),
          )
        ],
      );
    }
  }
}
