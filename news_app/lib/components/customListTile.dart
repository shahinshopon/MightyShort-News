import 'package:flutter/material.dart';
import 'package:news_app/const/colors.dart';
import 'package:news_app/pages/articles_details_page.dart';
import 'package:news_app/style/styles.dart';
import '../model/article_model.dart';

Widget customListTile(Article article, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticlePage(article: article)));
    },
    child: Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: AppStyles.imageCircularRadius,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          article.urlToImage != null
              ? Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(article.urlToImage!),
                        fit: BoxFit.cover),
                    borderRadius: AppStyles.imageCircularRadius,
                  ),
                )
              : Container(
                  height: 200.0,
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
              borderRadius: AppStyles.boxCircularRadius,
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
            article.title!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          )
        ],
      ),
    ),
  );
}
