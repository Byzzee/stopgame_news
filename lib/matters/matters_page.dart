import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stopgame_news/error/error_page.dart';
import 'package:stopgame_news/home/page_selector.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stopgame_news/settings/settings_bloc.dart';
import 'package:stopgame_news/theme/theme_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants.dart';
import 'bloc/matters_bloc.dart';

class MattersPage extends StatelessWidget {
  const MattersPage({Key? key, required this.controller}) : super(key: key);

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<MattersBLoC>().add(MattersEvent.refresh());
          //TODO: Синхронизировать индикатор с состоянием BLoC`а
          await Future<void>.delayed(Duration(seconds: 1));
        },
        backgroundColor: redStopgameColor,
        color: Colors.white,
        displacement: 32,
        child: SingleChildScrollView(
          controller: controller,
          child: BlocBuilder<MattersBLoC, MattersState>(
            builder: (context, state) {
              if (state is InitialMattersState) {
                //TODO: Это выглядит некрасиво (╯°□°）╯︵ ┻━┻
                context.read<MattersBLoC>().add(MattersEvent.refresh());
                // Это типа пустой виджет
                return SizedBox.shrink();
              } else if (state is FetchingMattersState) {
                controller.jumpTo(0);

                return Column(
                  children: List.filled(20, const _MatterSkeleton()),
                );
              } else if (state is FetchedMattersState) {
                List<Widget> matters = [];
                state.data.forEach((matter) {
                  matters.add(_MatterItem(
                    date: matter.date,
                    caption: matter.caption,
                    imageUrl: matter.imageUrl,
                    matterUrl: matter.matterUrl,
                    category: matter.category
                  ));
                });
                matters.insert(
                  context.watch<SettingsBLoC>().state.pageSelectorIsOnTop ? 0 : matters.length,
                  PageSelector(
                    selectedPage: state.selectedPage,
                    onSelect: (pageNumber) {
                      context.read<MattersBLoC>().add(MattersEvent.refresh(page: pageNumber));
                    }
                  )
                );

                return Column(children: matters);
              } else if (state is ErrorMattersState) {
                return ErrorPage();
              } else throw Exception('Упс... Этого не должно было произойти');
            },
          )
        )
      )
    );
  }
}


class _MatterSkeleton extends StatelessWidget {
  const _MatterSkeleton({Key? key, this.padding = 10, this.borderRadius = 16})
      : super(key: key);

  final double padding;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    const EdgeInsets inItemPadding = EdgeInsets.only(left: 12, right: 12, top: 12);

    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))
          ),
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade800,
            highlightColor: Colors.grey.shade600,
            period: Duration(seconds: 2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(borderRadius)),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      height: 1080,
                      width: 1920,
                      color: Colors.black54
                    )
                  )
                ),
                Padding(
                  padding: inItemPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 3,
                        child: Container(
                          height: 16,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black54,
                          ),
                        )
                      ),
                      Flexible(
                        flex: 5,
                        child: Container(
                          height: 16,
                          width: double.infinity
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          height: 16,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black54,
                          ),
                        )
                      ),
                    ]
                  ),
                ),
                Padding(
                  padding: inItemPadding,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 18,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 18,
                        width: MediaQuery.of(context).size.width * 0.75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black54,
                        ),
                      ),
                    ]
                  )
                ),
                SizedBox(height: 12)
              ]
            )
          )
        )
      )
    );
  }
}



class _MatterItem extends StatelessWidget {
  const _MatterItem({Key? key,
    required this.date, required this.caption, required this.imageUrl,
    required this.matterUrl, required this.category,
    this.padding = 10, this.borderRadius = 16}) : super(key: key);

  final String date;
  final String caption;
  final String imageUrl;
  final String matterUrl;
  final String category;
  final double padding;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    ThemeState themeState = context.watch<ThemeBLoC>().state;
    Color mainColor;

    if (themeState is LightThemeState)
      mainColor = Colors.black.withOpacity(0.6);
    else
      mainColor = Colors.white.withOpacity(0.6);

    const EdgeInsets inItemPadding = EdgeInsets.only(left: 12, right: 12, top: 12);

    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: GestureDetector(
          onTap: () async {
            await launch(matterUrl, forceWebView: true, enableJavaScript: true);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.all(Radius.circular(borderRadius))
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(borderRadius)),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Image.network(
                      imageUrl,
                      height: 1080,
                      width: 1920,
                      fit: BoxFit.contain,
                    )
                  )
                ),
                Padding(
                  padding: inItemPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        category,
                        style: TextStyle(
                          color: redStopgameColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        )
                      ),
                      Text(
                        date,
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 16
                        )
                      )
                    ]
                  ),
                ),
                Padding(
                  padding: inItemPadding,
                  child: Text(
                    caption,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    )
                  )
                ),
                SizedBox(height: 12)
              ]
            ),
          )
        )
      )
    );
  }
}

