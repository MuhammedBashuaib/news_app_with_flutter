import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/const.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetailsWebViewScreen extends StatefulWidget {
  final String url;
  final String appBarTitle;
  const NewsDetailsWebViewScreen({
    super.key,
    required this.url,
    required this.appBarTitle,
  });

  @override
  State<NewsDetailsWebViewScreen> createState() =>
      _NewsDetailsWebViewScreenState();
}

class _NewsDetailsWebViewScreenState extends State<NewsDetailsWebViewScreen> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.url),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 211, 210, 209),
        centerTitle: true,
        title: Text(
          widget.appBarTitle,
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
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
