import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_bloc.freezed.dart';

@freezed
abstract class ThemeEvent with _$ThemeEvent {
  const ThemeEvent._();

  const factory ThemeEvent.switchTheme() = SwitchThemeEvent;
}

@freezed
abstract class ThemeState with _$ThemeState {
  const ThemeState._();

  const factory ThemeState.dark() = DarkThemeState;
  const factory ThemeState.light() = LightThemeState;
}

class ThemeBLoC extends Bloc<ThemeEvent, ThemeState> {
  ThemeBLoC(this._prefs) :
        this._themeIsLight = _prefs.getBool('themeIsLight') ?? true,
        super((_prefs.getBool('themeIsLight') ?? true) ? const ThemeState.light() : const ThemeState.dark());

  SharedPreferences _prefs;
  bool _themeIsLight;

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) =>
      event.when<Stream<ThemeState>>(
        switchTheme: _switchTheme,
      );

  Stream<ThemeState> _switchTheme() async* {
    _themeIsLight = !_themeIsLight;

    await _prefs.setBool('themeIsLight', _themeIsLight);

    yield _themeIsLight ? const LightThemeState() : const DarkThemeState();
  }
}