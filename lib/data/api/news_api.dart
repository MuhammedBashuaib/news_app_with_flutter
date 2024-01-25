import 'package:dio/dio.dart';
import 'package:news_app_with_flutter/data/model/article_model.dart';

class NewsApi {
  final Dio dio;

  NewsApi({required this.dio});

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      final Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?apiKey=6aa368b092d441f4b7d703deb0b387ca&country=us&category=$category");
      Map<String, dynamic> responseData = response.data;
      List<dynamic> articleLest = responseData["articles"];
      List<ArticleModel> articles = [];
      for (var json in articleLest) {
        ArticleModel articleModel = ArticleModel.fromJson(json);
        articles.add(articleModel);
      }
      return articles;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
