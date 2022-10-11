
import 'package:news_app/model/source_model.dart';

class Article {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Article(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'] ,
      title: json['title'] as String,
      description: json['description'],
      url: json['url'] as String,
      urlToImage: json['urlToImage'] ,
      publishedAt: json['publishedAt'] as String,
      content: json['content'] ,
    );
  }
}