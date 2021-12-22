import 'dart:convert';

import 'package:newsapp/config.dart' as config;
import 'package:http/http.dart' as http;
import 'package:newsapp/models/news_data.dart';

const baseURL = 'newsapi.org';

final today = DateTime.now();
const startPath = '/v2/top-headlines';

final queryParameters = {
  //"q": "tesla",
  //"from": "${today.year}-${today.month - 1}-${today.day}",
  "country": "in",
  "sortBy": "publishedAt",
  "apiKey": config.apiKey
};

Future<List<NewsData>> fetchStartNews() async {
  final response =
      await http.get(Uri.https(baseURL, startPath, queryParameters));
  final data = jsonDecode(response.body);
  if (data['status'] != 'ok') return [];
  return jsonToNewsDataList(data['articles']);
}

List<NewsData> jsonToNewsDataList(data) {
  List<NewsData> articles = [];
  for (var article in data) {
    articles.add(NewsData.fromJSON(article));
  }
  return articles;
}
