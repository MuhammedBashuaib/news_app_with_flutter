import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/const.dart';
import 'package:news_app_with_flutter/data/model/category_model.dart';

// ignore: camel_case_types
class customCategoryCard extends StatelessWidget {
  final CategoryModel category;

  const customCategoryCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          RoutesScreen.categoryViewScreen,
          arguments: category.categoryName,
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: widthScreen * .01),
        height: heightScreen * .1,
        width: widthScreen * .4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widthScreen * .02),
          image: DecorationImage(
            image: AssetImage(category.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: TextStyle(
              fontSize: fSize * 1.2,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
