import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:news_app_with_flutter/const.dart';
import 'package:news_app_with_flutter/data/model/article_model.dart';
import 'package:news_app_with_flutter/presentation/screens/news_details_webview_screen.dart';

class CustomNewsTile extends StatelessWidget {
  final ArticleModel articleModel;
  const CustomNewsTile({
    super.key,
    required this.articleModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => NewsDetailsWebViewScreen(
                url: articleModel.url!, appBarTitle: articleModel.title!),
          ),
        );
        // Navigator.of(context)
        //     .pushNamed(RoutesScreen.newsDetailsWebViewScreen, arguments: {
        //   "url": articleModel.url!,
        //   "title": articleModel.title!,
        // });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: articleModel.urlToImage == null
                ? Image.asset(
                    "assets/images/business.avif",
                    height: heightScreen * .255,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : CachedNetworkImage(
                    imageUrl: articleModel.urlToImage!,
                    imageBuilder: (context, imageProvider) => Container(
                      height: heightScreen * .255,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                          // colorFilter: const ColorFilter.mode(
                          //   Colors.red,
                          //   BlendMode.colorBurn,
                          // ),
                        ),
                      ),
                    ),
                    placeholder: (context, url) => SizedBox(
                      height: heightScreen * .255,
                      width: double.infinity,
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
            // Image.network(
            //     articleModel.urlToImage!,
            //     height: heightScreen * .255,
            //     width: double.infinity,
            //     fit: BoxFit.cover,
            //   ),
          ),
          SizedBox(
            height: heightScreen * .012,
          ),
          Text(
            articleModel.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black87,
              fontSize: fSize * 1.4,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: heightScreen * .01,
          ),
          Text(
            articleModel.description ?? "null",
            maxLines: 2,
            style: TextStyle(
              color: Colors.grey,
              fontSize: fSize * .9,
            ),
          )
        ],
      ),
    );
  }
}
