import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stopgame_news/constants.dart';
import 'package:stopgame_news/error/error_page.dart';
import 'package:stopgame_news/news/bloc/news_bloc.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

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
        child: ListView(
          children: [
            BlocBuilder<NewsBLoC, NewsState>(
              builder: (context, state) {
                if (state is InitialNewsState) {
                  //TODO: Это выглядит некрасиво (╯°□°）╯︵ ┻━┻
                  context.read<NewsBLoC>().add(NewsEvent.refresh());
                  // Это типа пустой виджет
                  return SizedBox.shrink();
                }
                else if (state is FetchingNewsState) return Column(
                  children: List.filled(10, const _ItemSkeleton()),
                );
                else if (state is FetchedNewsState) {
                  List<Widget> news = [];
                  state.data.forEach((text) {
                    news.add(SizedBox(height: 16));
                    news.add(Text(
                      text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      )
                    ));
                  });

                  return Column(
                    children: news,
                  );
                }
                else if (state is ErrorNewsState) return ErrorPage();
                else throw Exception('Упс... Этого не должно было произойти');
              },
            )
          ],
        )
      )
    );
  }
}

class _ItemSkeleton extends StatelessWidget {
  const _ItemSkeleton({Key? key, double? padding})
      : this.padding = padding ?? 10.0, super(key: key);

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
              flex: 1,
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade800,
                highlightColor: Colors.grey.shade600,
                period: Duration(seconds: 2),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.black54,
                  ),
                )
              )
            ),
            SizedBox(
              width: padding,
            ),
            Flexible(
              flex: 2,
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
                          borderRadius: BorderRadius.circular(16),
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
                        width: _width * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
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

