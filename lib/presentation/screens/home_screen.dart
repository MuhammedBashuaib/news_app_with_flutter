import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/const.dart';
import 'package:news_app_with_flutter/data/repository/category_data.dart';
import 'package:news_app_with_flutter/presentation/widgets/custom_categories_list_view.dart';
import 'package:news_app_with_flutter/presentation/widgets/news_list_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(
                color: Colors.black,
                fontSize: fSize * 1.4,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.amber,
                fontSize: fSize * 1.4,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: heightScreen * .01,
          horizontal: widthScreen * .03,
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CustomCategoriesListView(categories: categories),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: heightScreen * .01,
              ),
            ),
            const NewsListVewBuilder(
              category: "general",
            ),
          ],
        ),
        // child: Column(
        //   children: [
        //
        //
        //     Expanded(child: ),
        //   ],
        // ),
      ),
    );
  }
}
