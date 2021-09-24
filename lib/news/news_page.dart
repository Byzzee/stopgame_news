import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stopgame_news/constants.dart';
import 'package:stopgame_news/error/error_page.dart';
import 'package:stopgame_news/news/bloc/news_bloc.dart';
import 'package:stopgame_news/theme/theme_bloc.dart';
import 'package:url_launcher/url_launcher.dart';


class NewsPage extends StatelessWidget {
  NewsPage({Key? key, required this.controller}) : super(key: key);
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<NewsBLoC>().add(NewsEvent.refresh());
          //TODO: Синхронизировать индикатор с состоянием BLoC`а
          await Future<void>.delayed(Duration(seconds: 1));
        },
        backgroundColor: redStopgameColor,
        color: Colors.white,
        displacement: 32,
        child: SingleChildScrollView(
          controller: controller,
          child: BlocBuilder<NewsBLoC, NewsState>(
            builder: (context, state) {
              if (state is InitialNewsState) {
                //TODO: Это выглядит некрасиво (╯°□°）╯︵ ┻━┻
                context.read<NewsBLoC>().add(NewsEvent.refresh());
                // Это типа пустой виджет
                return SizedBox.shrink();
              } else if (state is FetchingNewsState) {
                controller.jumpTo(0);

                return Column(
                  children: List.filled(20, const _ArticleSkeleton()),
                );
              } else if (state is FetchedNewsState) {
                List<Widget> news = [];
                state.data.forEach((article) {
                  news.add(_ArticleItem(
                    caption: article.caption,
                    imageUrl: article.imageUrl,
                    articleUrl: article.articleUrl)
                  );
                });
                news.insert(news.length, _PageSelector(selectedPage: state.selectedPage));

                return Column(children: news);
              } else if (state is ErrorNewsState) {
                return ErrorPage();
              } else throw Exception('Упс... Этого не должно было произойти');
            },
          )
        )
      )
    );
  }
}


class _PageButton extends StatelessWidget {
  const _PageButton({Key? key, required this.number, required this.isSelected}) : super(key: key);

  final int number;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 4,
      child: GestureDetector(
        onTap: () {
          if (!isSelected) context.read<NewsBLoC>().add(NewsEvent.refresh(page: number));
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Transform(
              transform: Matrix4.skewX(-0.2),
              alignment: Alignment.center,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final size = min(constraints.maxWidth, constraints.maxHeight);

                  return ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      height: size,
                      width: size,
                      color: isSelected ? redStopgameColor : Colors.grey[600]
                    ),
                  );
                }
              ),
            ),
            Text(
              '${number.toString()}',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18
              )
            )
          ],
        ),
      )
    );
  }
}


class _PageSelector extends StatelessWidget {
  const _PageSelector({Key? key, required this.selectedPage}) : super(key: key);

  final int selectedPage;

  @override
  Widget build(BuildContext context) {
    List<Widget> pageButtons = [Spacer()];
    for (int i = 1; i <= 8; i++) {
      pageButtons.add(_PageButton(number: i, isSelected: i == selectedPage));
      pageButtons.add(Spacer(flex: 2));
    }
    pageButtons.last = Spacer();

    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: pageButtons
        ),
      )
    );
  }
}


class _ArticleItem extends StatelessWidget {
  const _ArticleItem(
      {Key? key,
      required this.caption, required this.imageUrl,
      required this.articleUrl, this.padding = 10}) : super(key: key);

  final String caption;
  final String imageUrl;
  final String articleUrl;
  final double padding;

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    ThemeState themeState = context.watch<ThemeBLoC>().state;
    Color mainColor;

    if (themeState is LightThemeState)
      mainColor = Colors.black.withOpacity(0.6);
    else
      mainColor = Colors.white.withOpacity(0.6);

    return Container(
      height: _height * 0.14,
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: GestureDetector(
          onTap: () async {
            // Закоментил проверку canLaunch, потому что в API 30 она всегда возвращает false
            await launch(articleUrl, forceWebView: true, enableJavaScript: true);
            /*await canLaunch(articleUrl)
            ? await launch(articleUrl, forceWebView: true, enableJavaScript: true)
            : throw 'Could not launch $articleUrl';*/
          },
          child: Row(
            children: [
              Flexible(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Image.network(
                      imageUrl,
                      height: 1080,
                      width: 1920,
                      fit: BoxFit.contain,
                    )
                  )
                )
              ),
              SizedBox(
                width: padding,
              ),
              Flexible(
                flex: 3,
                child: Text(
                  caption,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 14,
                  ),
                )
              )
            ],
          ),
        ),
      )
    );
  }
}


class _ArticleSkeleton extends StatelessWidget {
  const _ArticleSkeleton({Key? key, this.padding = 10}) : super(key: key);

  final double padding;

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.height;

    return Container(
      height: _height * 0.14,
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade800,
                highlightColor: Colors.grey.shade600,
                period: Duration(seconds: 2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      height: 1080,
                      width: 1920,
                      color: Colors.black54
                    )
                  )
                )
              )
            ),
            SizedBox(
              width: padding,
            ),
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: padding,
                  ),
                  Flexible(
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.shade800,
                      highlightColor: Colors.grey.shade600,
                      period: Duration(seconds: 2),
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black54,
                        ),
                      )
                    )
                  ),
                  SizedBox(
                    height: padding,
                  ),
                  Flexible(
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.shade800,
                      highlightColor: Colors.grey.shade600,
                      period: Duration(seconds: 2),
                      child: Container(
                        height: double.infinity,
                        width: _width * 0.24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black54,
                        ),
                      )
                    )
                  ),
                  SizedBox(
                    height: padding,
                  ),
                  Flexible(
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.shade800,
                      highlightColor: Colors.grey.shade600,
                      period: Duration(seconds: 2),
                      child: Container(
                        height: double.infinity,
                        width: _width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black54,
                        ),
                      )
                    )
                  ),
                  SizedBox(
                    height: padding,
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
