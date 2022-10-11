import 'package:flutter/material.dart';
import 'package:news_app/const/colors.dart';
import 'package:news_app/style/styles.dart';

import '../model/article_model.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  ArticlePage({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title!),
      ),
      body: Padding(
        padding:AppStyles.padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            article.urlToImage != null
                ? Container(
                    height: 300.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(article.urlToImage!),
                          fit: BoxFit.cover),
                      borderRadius: AppStyles.imageCircularRadius,
                    ),
                  )
                : Container(
                    height: 300.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://source.unsplash.com/weekly?coding'),
                          fit: BoxFit.cover),
                      borderRadius: AppStyles.imageCircularRadius,
                    ),
                  ),
            AppStyles.verticallySizedBox,
            Container(
              padding: AppStyles.padding,
              decoration: BoxDecoration(
                color: AppColors.redColor,
                borderRadius:AppStyles.boxCircularRadius,
              ),
              child: Text(
                article.source!.name!,
                style: const TextStyle(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            AppStyles.verticallySizedBox,
            Text(
              article.description!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            AppStyles.verticallySizedBox,
            Text(
              article.content!,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
