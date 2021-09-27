import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:l/l.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stopgame_news/bottom_navigation_bar/navigation_cubit.dart';
import 'package:stopgame_news/constants.dart';
import 'package:stopgame_news/home/home_page.dart';
import 'package:stopgame_news/matters/bloc/matters_bloc.dart';
import 'package:stopgame_news/news/bloc/news_bloc.dart';
import 'package:stopgame_news/portrait_mode_mixin.dart';
import 'package:stopgame_news/settings/settings_bloc.dart';
import 'package:stopgame_news/theme/theme_bloc.dart';
import 'package:stopgame_news/videos/bloc/videos_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  Bloc.observer = AppBlocObserver();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    portraitModeOnly();

    return MultiBlocProvider(
      providers: [
        BlocProvider<NewsBLoC>(create: (context) => NewsBLoC()),
        BlocProvider<VideosBLoC>(create: (context) => VideosBLoC()),
        BlocProvider<MattersBLoC>(create: (context) => MattersBLoC()),
        BlocProvider<ThemeBLoC>(create: (context) => ThemeBLoC()),
        BlocProvider<SettingsBLoC>(create: (context) => SettingsBLoC()),
        BlocProvider<NavigationCubit>(create: (context) => NavigationCubit())
      ],
      child: BlocBuilder<ThemeBLoC, ThemeState>(
        builder: (context, state) {
          ThemeData? actualTheme;

          if (state is LightThemeState) actualTheme = lightTheme;
          else if (state is DarkThemeState) actualTheme = darkTheme;

          return MaterialApp(
            title: 'Stopgame News',
            debugShowCheckedModeBanner: false,
            theme: actualTheme,
            home: HomePage(initialPageNumber: context.read<NavigationCubit>().state),
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


void copyToClipboard(BuildContext context, String data) {
  Clipboard.setData(ClipboardData(text: data));
  showTopSnackBar(
      context,
      CustomSnackBar.success(
        icon: const Icon(
          FontAwesomeIcons.clipboardCheck,
          color: Colors.black38,
          size: 112
        ),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 20
        ),
        backgroundColor: redStopgameColor,
        message: 'Скопировано в буфер обмена'
      )
  );
}