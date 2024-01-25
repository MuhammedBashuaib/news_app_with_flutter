import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/const.dart';
import 'package:news_app_with_flutter/data/model/article_model.dart';
import 'package:news_app_with_flutter/presentation/widgets/custom_news_tile.dart';

class CustomNewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const CustomNewsListView({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
              padding: EdgeInsets.only(top: heightScreen * .03),
              child: CustomNewsTile(
                articleModel: articles[index],
              ));
        },
      ),
    );
  }
}
