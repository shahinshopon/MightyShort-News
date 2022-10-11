import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/article_model.dart';

class ApiService {
 // final endPointUrl = "newsapi.org";
 // final client = http.Client();

  Future<List<Article>> getArticle() async {
    // final queryParameters = {
    //   'country': 'us',
    //   'category': 'techcrunch',
    //   'apiKey': 'b3dd2c6b940c4c85bf73bafaa383a552'
    // };

    //final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameters);
     // final response = await client.get(uri);
     //Map<String, dynamic> json = jsonDecode(response.body);

    final uri =await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=b3dd2c6b940c4c85bf73bafaa383a552')); 
    Map<String, dynamic> json = jsonDecode(uri.body);
    List<dynamic> body = json['articles'];
   // print(body);
    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
    return articles;
  }
}
