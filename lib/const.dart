import 'package:flutter/material.dart';

//Screen coordinates and the default size of the font
//////////////////////////////////////////////////////////////
double widthScreen = 0;
double heightScreen = 0;
double fSize = 0;

initializeHWFSize(BuildContext context) {
  widthScreen = MediaQuery.of(context).size.width;
  heightScreen = MediaQuery.of(context).size.height;
  fSize = widthScreen / 25;
}
//////////////////////////////////////////////////////////////

//Screen routes
/////////////////////////////////////////////////////////////
class RoutesScreen {
  static const String homeScreen = "/";
  static const String categoryViewScreen = "categoryViewScreen";
  static const String newsDetailsWebViewScreen = "newsDetailsWebViewScreen";
}

//const api information
/////////////////////////////////////////////////////////////
class ApiInformation {
  static const String baseUrl = "https://newsapi.org/v2/";
  static const String apiKey = "6aa368b092d441f4b7d703deb0b387ca";
}
