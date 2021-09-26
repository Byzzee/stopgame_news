import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stopgame_news/bottom_navigation_bar/app_bottom_navigation_bar.dart';
import 'package:stopgame_news/bottom_navigation_bar/navigation_cubit.dart';
import 'package:stopgame_news/news/news_page.dart';
import 'package:stopgame_news/settings/settings_page.dart';
import 'package:stopgame_news/streams/streams_page.dart';
import 'package:stopgame_news/videos/videos_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final PageController pageViewController = PageController();
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(
        pageViewController: pageViewController,
        scrollController: scrollController,
      ),
      body: PageView(
        onPageChanged: (index) => context.read<NavigationCubit>().emit(index),
        controller: pageViewController,
        children: [
          NewsPage(controller: scrollController),
          VideosPage(controller: scrollController),
          SettingsPage()
        ]
      )
    );
  }
}
