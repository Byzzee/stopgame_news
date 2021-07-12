import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_bloc.freezed.dart';

@freezed
abstract class ThemeEvent with _$ThemeEvent {
  const ThemeEvent._();

  const factory ThemeEvent.switchTheme() = SwitchThemeEvent;
}

@freezed
abstract class ThemeState with _$ThemeState {
  const ThemeState._();

  const factory ThemeState.light() = LightThemeState;
  const factory ThemeState.dark() = DarkThemeState;
}

class ThemeBLoC extends HydratedBloc<ThemeEvent, ThemeState> {
  ThemeBLoC() : super(const DarkThemeState());

  //@override
  //ThemeState get initialState => super.initialState ?? ThemeState.dark();

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) =>
    event.when<Stream<ThemeState>>(
      switchTheme: _switchTheme,
    );

  Stream<ThemeState> _switchTheme() async* {
    if (super.state is DarkThemeState) yield const LightThemeState();
    else if (super.state is LightThemeState) yield const DarkThemeState();
  }

  @override
  ThemeState fromJson(Map<String, dynamic> json) {
    if (json['themeIsDark'] as bool) {
      return DarkThemeState();
    } else {
      return LightThemeState();
    }
  }

  @override
  Map<String, dynamic> toJson(ThemeState state) {
    return {'themeIsDark': state is DarkThemeState};
  }
}