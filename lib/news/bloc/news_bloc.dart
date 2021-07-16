import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_bloc.freezed.dart';

@freezed
abstract class NewsEvent with _$NewsEvent {
  const NewsEvent._();

  const factory NewsEvent.refresh() = RefreshNewsEvent;
}

@freezed
abstract class NewsState with _$NewsState {
  const NewsState._();

  const factory NewsState.initial() = InitialNewsState;
  const factory NewsState.fetching() = FetchingNewsState;
  const factory NewsState.fetched(List<String> data) = FetchedNewsState;
  const factory NewsState.error(String errorMessage) = ErrorNewsState;
}

class NewsBLoC extends Bloc<NewsEvent, NewsState> {
  NewsBLoC() : super(const InitialNewsState());

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) =>
    event.when<Stream<NewsState>>(
      refresh: _refresh,
    );

  //TODO: Убрать
  Future<List<String>> getDataFromFakeRepository() async {
    await Future<void>.delayed(Duration(seconds: 5)).timeout(Duration(seconds: 10));
    return ['1 новость', '2 новость', '3 новость'];
  }

  Stream<NewsState> _refresh() async* {
    try {
      yield NewsState.fetching();
      //TODO: Заменить на настоящий репозиторий
      List<String> data = await getDataFromFakeRepository();
      yield NewsState.fetched(data);
    } on TimeoutException {
      yield NewsState.error('Время ожидания запроса вышло');
    } on dynamic catch(e) {
      yield NewsState.error(e.toString());
      rethrow;
    }
  }
}