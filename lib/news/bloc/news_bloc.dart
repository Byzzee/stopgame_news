import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stopgame_news/news/repository/news_parser.dart';

part 'news_bloc.freezed.dart';

@freezed
abstract class NewsEvent with _$NewsEvent {
  const NewsEvent._();

  const factory NewsEvent.refresh({int? page}) = RefreshNewsEvent;
}

@freezed
abstract class NewsState with _$NewsState {
  const NewsState._();

  const factory NewsState.initial() = InitialNewsState;
  const factory NewsState.fetching() = FetchingNewsState;
  const factory NewsState.fetched(List<Article> data, int selectedPage) = FetchedNewsState;
  const factory NewsState.error(String errorMessage) = ErrorNewsState;
}

class NewsBLoC extends Bloc<NewsEvent, NewsState> {
  NewsBLoC() : selectedPage = 1, super(const InitialNewsState());

  int selectedPage;

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) =>
    event.when<Stream<NewsState>>(
      refresh: _refresh,
    );

  Stream<NewsState> _refresh(int? page) async* {
    if (page != null) selectedPage = page;

    try {
      yield NewsState.fetching();
      List<Article> data = await getArticlesByPage(page: selectedPage).timeout(Duration(seconds: 20));
      yield NewsState.fetched(data, selectedPage);
    } on TimeoutException {
      yield NewsState.error('Время ожидания запроса вышло');
    } on dynamic catch(e) {
      yield NewsState.error(e.toString());
      rethrow;
    }
  }
}