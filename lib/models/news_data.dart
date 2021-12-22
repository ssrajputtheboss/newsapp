/// model for data fetched using news api
class NewsData {
  final String source,
      author,
      title,
      description,
      articleURL,
      imageURL,
      publishedAt,
      content;

  NewsData.fromJSON(json)
      : author = json['author'] ?? '',
        title = json['title'] ?? '',
        description = json['description'] ?? '',
        articleURL = json['url'] ?? '',
        imageURL = json['urlToImage'] ?? '',
        publishedAt = json['publishedAt'] ?? '',
        content = json['content'] ?? '',
        source = json['source']['name'] ?? '';
}
