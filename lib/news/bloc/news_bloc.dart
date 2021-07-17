import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stopgame_news/news/repository/stopgame_parser.dart';

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
  const factory NewsState.fetched(List<Article> data) = FetchedNewsState;
  const factory NewsState.error(String errorMessage) = ErrorNewsState;
}

class NewsBLoC extends Bloc<NewsEvent, NewsState> {
  NewsBLoC() : super(const InitialNewsState());

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) =>
    event.when<Stream<NewsState>>(
      refresh: _refresh,
    );

  Stream<NewsState> _refresh() async* {
    try {
      yield NewsState.fetching();
      List<Article> data = await getArticles().timeout(Duration(seconds: 20));
      yield NewsState.fetched(data);
    } on TimeoutException {
      yield NewsState.error('Время ожидания запроса вышло');
    } on dynamic catch(e) {
      yield NewsState.error(e.toString());
      rethrow;
    }
  }
}