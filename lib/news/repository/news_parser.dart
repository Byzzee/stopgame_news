import 'package:flutter/cupertino.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

 @immutable
class Article {
  const Article({required this.caption, required this.imageUrl, required this.articleUrl});

  final String caption;
  final String imageUrl;
  final String articleUrl;
}

const String _stopgameUrl = 'https://stopgame.ru';
const String _stopgameNewsUrl = _stopgameUrl + '/news';

Future<List<Article>> getArticlesByPage({@required int? page}) async {
  final response = await http.Client().get(Uri.parse(_stopgameNewsUrl + '/all/p${page.toString()}'));

  if (response.statusCode == 200) {
    var document = parse(response.body);
    var rowArticles = document.getElementsByClassName('item article-summary');
    List<Article> articles = [];

    rowArticles.forEach((element) {
      String caption = element.getElementsByClassName('caption caption-bold').single.getElementsByTagName('a').single.innerHtml;
      // Удаляем перенос строки (Первые два символа)
      caption = caption.replaceRange(0, 1, '');
      String imageUrl = element.getElementsByClassName('image-16x9 p-0').single.attributes['src']!;
      String articleUrl = _stopgameUrl + element.getElementsByClassName('caption caption-bold').single.getElementsByTagName('a').single.attributes['href']!;

      articles.add(Article(caption: caption, imageUrl: imageUrl, articleUrl: articleUrl));
    });

    return articles;
  }
  else {
    throw Exception('Не удалось получить данные с сайта');
  }
}