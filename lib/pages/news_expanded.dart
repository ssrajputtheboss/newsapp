import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/news_data.dart';

class NewsExpanded extends StatelessWidget {
  final NewsData news;
  const NewsExpanded({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(2.0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Image.network(
                news.imageURL,
                fit: BoxFit.fitWidth,
                errorBuilder: (context, error, stackTrace) => Image.asset(
                  'assets/not_found.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(2.0),
              child: Text(
                news.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Text("Author-${news.author}"),
            Text(news.publishedAt),
            Text("Source:${news.source}"),
            Container(
              margin: const EdgeInsets.all(2.0),
              child: Text(news.content),
            )
          ],
        ),
      ),
    );
  }
}
