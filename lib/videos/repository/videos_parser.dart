import 'package:flutter/cupertino.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

@immutable
class Video {
  const Video({required this.date, required this.caption,required this.imageUrl,
               required this.videoUrl, required this.category});

  final String date;
  final String caption;
  final String imageUrl;
  final String videoUrl;
  final String category;
}

const String _stopgameUrl = 'https://stopgame.ru';
const String _stopgameVideosUrl = _stopgameUrl + '/video';

Future<List<Video>> getVideosByPage({required int page}) async {
  final response = await http.Client().get(Uri.parse(_stopgameVideosUrl + '/new/p${page.toString()}'));

  if (response.statusCode == 200) {
    var document = parse(response.body);
    var rowVideos = document.getElementsByClassName('item article-summary');
    List<Video> videos = [];

    rowVideos.forEach((element) {
      String caption = element.getElementsByClassName('caption caption-bold').single.getElementsByTagName('a').single.innerHtml;
      // Убирает спецсимволы из заголовка
      caption = caption.replaceAll('&nbsp;', ' ');
      String videoUrl = _stopgameUrl + element.getElementsByClassName('article-image image').single.attributes['href']!;
      String date = element.getElementsByClassName('info-item timestamp').single.innerHtml;
      String imageUrl = element.getElementsByClassName('image-16x9').single.attributes['src']!;
      String category = element.getElementsByClassName('text').single.innerHtml;

      videos.add(Video(date: date, caption: caption, imageUrl: imageUrl,
                       videoUrl: videoUrl, category: category));
    });

    return videos;
  }
  else {
    throw Exception('Не удалось получить данные с сайта');
  }
}

/// Если видео загружено на YouTube, возвращает ссылку на него
Future<String?> getVideoYoutubeUrl({required String? videoStopgameUrl}) async {
  final response = await http.Client().get(Uri.parse(videoStopgameUrl!));

  if (response.statusCode == 200) {
    var document = parse(response.body);

    var iframe = document.getElementsByClassName('iframe_h');
    String? youtubeUrl;
    if (iframe.isNotEmpty) {
      youtubeUrl = iframe.first
        .getElementsByTagName('iframe').first
        .attributes['src'];
    }

    return youtubeUrl;
  }
  else {
    throw Exception('Не удалось получить данные с сайта');
  }
}