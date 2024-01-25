import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/const.dart';
import 'package:news_app_with_flutter/presentation/widgets/news_list_view_builder.dart';

class CategoryViewScreen extends StatelessWidget {
  const CategoryViewScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final String category =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        //elevation: 0,
        //backgroundColor: Colors.amber,
        backgroundColor: const Color.fromARGB(255, 211, 210, 209),
        centerTitle: true,
        title: Text(
          category,
          style: TextStyle(
            fontSize: fSize * 1.8,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: heightScreen * .03,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          NewsListVewBuilder(category: category),
        ],
      ),
    );
  }
}
