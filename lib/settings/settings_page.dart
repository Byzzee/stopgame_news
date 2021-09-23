import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:stopgame_news/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/theme_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    ThemeState _themeState  = context.watch<ThemeBLoC>().state;
    Color _mainColor;

    if (_themeState is LightThemeState) _mainColor = Colors.black.withOpacity(0.6);
    else _mainColor = Colors.white.withOpacity(0.6);
    
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(_width * 0.05),
        child: Column(
          children: [
            _AppInfo(mainColor: _mainColor),
            _Divider(color: _mainColor),
            _ThemeSwitch(mainColor: _mainColor),
            _GitHubLink(mainColor: _mainColor)
          ]
        ),
      ),
    );
  }
}

class _AppInfo extends StatelessWidget {
  const _AppInfo({Key? key, @required this.mainColor}) : super(key: key);

  final Color? mainColor;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshot) => Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            flex: 1,
            child: Image(image: AssetImage('assets/logo.png'))
          ),
          Flexible(
            flex: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  snapshot.hasData ? snapshot.data!.appName : '???',
                  style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    letterSpacing: 0.8
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Версия - ' + (snapshot.hasData ? snapshot.data!.version : '???'),
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 16,
                    letterSpacing: 0.8
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}

class _ThemeSwitch extends StatelessWidget {
  const _ThemeSwitch({Key? key, @required this.mainColor}) : super(key: key);

  final Color? mainColor;

  @override
  Widget build(BuildContext context) {
    return _SettingsItem(
      icon: CupertinoIcons.moon,
      text: 'Тёмная тема',
      action: Switch(
        value: context.watch<ThemeBLoC>().state is DarkThemeState,
        activeColor: redStopgameColor,
        onChanged: (value) {
          context.read<ThemeBLoC>().add(ThemeEvent.switchTheme());
        },
      ),
      mainColor: mainColor,
    );
  }
}

class _GitHubLink extends StatelessWidget {
  const _GitHubLink({Key? key, @required this.mainColor}) : super(key: key);

  final Color? mainColor;

  @override
  Widget build(BuildContext context) {
    return _SettingsItem(
      icon: FontAwesomeIcons.github,
      text: 'GitHub',
      action: IconButton(
        onPressed: () async {
          await launch('https://github.com/Byzzee/stopgame_news', forceWebView: true, enableJavaScript: true);
        },
        icon: Icon(
          FontAwesomeIcons.externalLinkAlt,
          size: 22,
          color: mainColor,
        ),
      ),
      mainColor: mainColor,
    );
  }
}

class _SettingsItem extends StatelessWidget {
  const _SettingsItem({Key? key, @required this.icon, @required this.text, @required this.action,
    @required this.mainColor}) : super(key: key);

  final IconData? icon;
  final String? text;
  final Widget? action;
  final Color? mainColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          color: mainColor,
        ),
        Text(
          text ?? '',
          style: TextStyle(
            color: mainColor,
            fontWeight: FontWeight.w500,
            fontSize: 14,
            letterSpacing: 0.8
          ),
        ),
        action ?? SizedBox(width: 1, height: 1)
      ]
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider({Key? key, @required this.color}) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: _height * 0.02),
      child: Container(
        width: _width * 0.9,
        height: 1,
        color: color,
      ),
    );
  }
}
