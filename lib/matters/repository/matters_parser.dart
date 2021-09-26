import 'package:flutter/cupertino.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

@immutable
class Matter {
  const Matter({required this.date, required this.caption,required this.imageUrl,
    required this.matterUrl, required this.category});

  final String date;
  final String caption;
  final String imageUrl;
  final String matterUrl;
  final String category;
}

const String _stopgameUrl = 'https://stopgame.ru';
const String _stopgameMattersUrl = _stopgameUrl + '/articles';

Future<List<Matter>> getMattersByPage({required int page}) async {
  final response = await http.Client().get(Uri.parse(_stopgameMattersUrl + '/new/p${page.toString()}'));

  if (response.statusCode == 200) {
    var document = parse(response.body);
    var rowMatters = document.getElementsByClassName('item article-summary');
    List<Matter> matters = [];

    rowMatters.forEach((element) {
      String caption = element.getElementsByClassName('caption caption-bold').single.getElementsByTagName('a').single.innerHtml;
      // Убирает спецсимволы из заголовка
      caption = caption.replaceAll('&nbsp;', ' ');
      String matterUrl = _stopgameUrl + element.getElementsByClassName('article-image image').single.attributes['href']!;
      String date = element.getElementsByClassName('info-item timestamp').single.innerHtml;
      String imageUrl = element.getElementsByClassName('image-16x9').single.attributes['src']!;
      String category = element.getElementsByClassName('text').single.innerHtml;

      matters.add(Matter(date: date, caption: caption, imageUrl: imageUrl,
          matterUrl: matterUrl, category: category));
    });

    return matters;
  }
  else {
    throw Exception('Не удалось получить данные с сайта');
  }
}
