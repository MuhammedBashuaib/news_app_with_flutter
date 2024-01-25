import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/data/model/article_model.dart';
import 'package:news_app_with_flutter/data/repository/article_data.dart';
import 'package:news_app_with_flutter/presentation/widgets/custom_circular_progress_indicator.dart';
import 'package:news_app_with_flutter/presentation/widgets/custom_news_list_view.dart';
import 'package:news_app_with_flutter/presentation/widgets/error_message.dart';

class NewsListVewBuilder extends StatefulWidget {
  final String category;
  const NewsListVewBuilder({
    super.key,
    required this.category,
  });

  @override
  State<NewsListVewBuilder> createState() => _NewsListVewBuilderState();
}

class _NewsListVewBuilderState extends State<NewsListVewBuilder> {
  final ArticleData articleData = ArticleData();
  var articles;
  @override
  void initState() {
    super.initState();
    articles = articleData.getArticleNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: articles,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CustomNewsListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: ErrorMessage(
              errorMessage: "Error",
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: CustomCircularProgressIndicator(),
          );
        }
      },
    );
  }
}
