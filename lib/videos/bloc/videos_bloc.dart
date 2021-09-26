import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stopgame_news/videos/repository/videos_parser.dart';
part 'videos_bloc.freezed.dart';

@freezed
abstract class VideosEvent with _$VideosEvent {
  const VideosEvent._();

  const factory VideosEvent.refresh({int? page}) = RefreshVideosEvent;
}

@freezed
abstract class VideosState with _$VideosState {
  const VideosState._();

  const factory VideosState.initial() = InitialVideosState;
  const factory VideosState.fetching() = FetchingVideosState;
  const factory VideosState.fetched(List<Video> data, int selectedPage) = FetchedVideosState;
  const factory VideosState.error(String errorMessage) = ErrorVideosState;
}

class VideosBLoC extends Bloc<VideosEvent, VideosState> {
  VideosBLoC() : selectedPage = 1, super(const InitialVideosState());

  int selectedPage;

  @override
  Stream<VideosState> mapEventToState(VideosEvent event) =>
      event.when<Stream<VideosState>>(
        refresh: _refresh,
      );

  Stream<VideosState> _refresh(int? page) async* {
    if (page != null) selectedPage = page;

    try {
      yield VideosState.fetching();
      List<Video> data = await getVideosByPage(page: selectedPage).timeout(Duration(seconds: 20));
      yield VideosState.fetched(data, selectedPage);
    } on TimeoutException {
      yield VideosState.error('Время ожидания запроса вышло');
    } on dynamic catch(e) {
      yield VideosState.error(e.toString());
      rethrow;
    }
  }
}