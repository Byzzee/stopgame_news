import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stopgame_news/bottom_navigation_bar/app_bottom_navigation_bar.dart';
import 'package:stopgame_news/bottom_navigation_bar/navigation_cubit.dart';
import 'package:stopgame_news/matters/matters_page.dart';
import 'package:stopgame_news/news/news_page.dart';
import 'package:stopgame_news/settings/settings_page.dart';
import 'package:stopgame_news/videos/videos_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required int initialPageNumber})
      : pageViewController = PageController(initialPage: initialPageNumber), super(key: key);

  final PageController pageViewController;
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
          MattersPage(controller: scrollController),
          NewsPage(controller: scrollController),
          VideosPage(controller: scrollController),
          SettingsPage()
        ]
      )
    );
  }
}
