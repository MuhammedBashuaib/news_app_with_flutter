import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/const.dart';
import 'package:news_app_with_flutter/data/model/category_model.dart';
import 'package:news_app_with_flutter/presentation/widgets/custom_category_card.dart';

class CustomCategoriesListView extends StatelessWidget {
  final List<CategoryModel> categories;

  const CustomCategoriesListView({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightScreen * .1,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return customCategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
