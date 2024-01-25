import 'package:dio/dio.dart';
import 'package:news_app_with_flutter/data/api/news_api.dart';
import 'package:news_app_with_flutter/data/model/article_model.dart';

class ArticleData {
  final NewsApi _newsApi = NewsApi(dio: Dio());

  Future<List<ArticleModel>> getArticleNews({required String category}) async {
    List<ArticleModel> articles = await _newsApi.getNews(category: category);
    return articles;
  }
}
