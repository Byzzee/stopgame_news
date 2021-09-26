import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'settings_bloc.freezed.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const SettingsEvent._();

  const factory SettingsEvent.switchPageSelectorPosition() = SwitchPageSelectorPositionSettingsEvent;
}

@freezed
abstract class SettingsState with _$SettingsState {
  const SettingsState._();

  const factory SettingsState.actual({required bool pageSelectorIsOnTop}) = ActualSettingsState;
}

class SettingsBLoC extends HydratedBloc<SettingsEvent, SettingsState> {
  SettingsBLoC() : super(const ActualSettingsState(pageSelectorIsOnTop: false));

  @override
  Stream<SettingsState> mapEventToState(SettingsEvent event) =>
    event.when<Stream<SettingsState>>(
      switchPageSelectorPosition: _switchPageSelectorPosition,
    );

  Stream<SettingsState> _switchPageSelectorPosition() async* {
    final ActualSettingsState newState = (state as ActualSettingsState).copyWith(pageSelectorIsOnTop: !state.pageSelectorIsOnTop);
    yield newState;
  }

  @override
  SettingsState fromJson(Map<String, dynamic> json) {
    final bool pageSelectorIsOnTop = json['pageSelectorIsOnTop'] as bool;

    return ActualSettingsState(pageSelectorIsOnTop: pageSelectorIsOnTop);
  }

  @override
  Map<String, dynamic> toJson(SettingsState state) {
    return {'pageSelectorIsOnTop': state.pageSelectorIsOnTop};
  }
}