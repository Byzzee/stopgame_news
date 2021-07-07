import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l/l.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stopgame_news/constants.dart';
import 'package:stopgame_news/home/home_page.dart';
import 'package:stopgame_news/theme_bloc.dart';

void main() async {
  Bloc.observer = AppBlocObserver();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBLoC>(create: (context) => ThemeBLoC(SharedPreferences.getInstance()))
      ],
      child: BlocBuilder<ThemeBLoC, ThemeState>(
        builder: (context, state) {
          ThemeData? actualTheme;
          if (state is LightThemeState) {
            actualTheme = lightTheme;
          } else if (state is DarkThemeState) {
            actualTheme = darkTheme;
          }

          return MaterialApp(
            title: 'Stopgame News',
            debugShowCheckedModeBanner: false,
            theme: actualTheme,
            home: HomePage(),
          );
        }
      )
    );
  }
}


class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    l.i(transition);
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    l.e(error, stackTrace);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onCreate(BlocBase bloc) {
    l.s(bloc);
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    l.s(bloc);
    super.onClose(bloc);
  }
}