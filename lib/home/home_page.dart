import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stopgame_news/bottom_navigation_bar/app_bottom_navigation_bar.dart';
import 'package:stopgame_news/bottom_navigation_bar/navigation_cubit.dart';
import 'package:stopgame_news/error/error_page.dart';
import 'package:stopgame_news/news/news_page.dart';
import 'package:stopgame_news/settings/settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(),
      body: BlocBuilder<NavigationCubit, int>(
        builder: (context, state) {
          switch (state) {
            case 0:
              return NewsPage();
            case 1:
              return SettingsPage();
            default:
              return ErrorPage();
          }
        },
      )
    );
  }
}
