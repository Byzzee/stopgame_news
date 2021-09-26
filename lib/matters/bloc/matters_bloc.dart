import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stopgame_news/matters/repository/matters_parser.dart';
part 'matters_bloc.freezed.dart';

@freezed
abstract class MattersEvent with _$MattersEvent {
  const MattersEvent._();

  const factory MattersEvent.refresh({int? page}) = RefreshMattersEvent;
}

@freezed
abstract class MattersState with _$MattersState {
  const MattersState._();

  const factory MattersState.initial() = InitialMattersState;
  const factory MattersState.fetching() = FetchingMattersState;
  const factory MattersState.fetched(List<Matter> data, int selectedPage) = FetchedMattersState;
  const factory MattersState.error(String errorMessage) = ErrorMattersState;
}

class MattersBLoC extends Bloc<MattersEvent, MattersState> {
  MattersBLoC() : selectedPage = 1, super(const InitialMattersState());

  int selectedPage;

  @override
  Stream<MattersState> mapEventToState(MattersEvent event) =>
      event.when<Stream<MattersState>>(
        refresh: _refresh,
      );

  Stream<MattersState> _refresh(int? page) async* {
    if (page != null) selectedPage = page;

    try {
      yield MattersState.fetching();
      List<Matter> data = await getMattersByPage(page: selectedPage).timeout(Duration(seconds: 20));
      yield MattersState.fetched(data, selectedPage);
    } on TimeoutException {
      yield MattersState.error('Время ожидания запроса вышло');
    } on dynamic catch(e) {
      yield MattersState.error(e.toString());
      rethrow;
    }
  }
}