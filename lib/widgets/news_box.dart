import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/news_data.dart';
import 'package:newsapp/pages/news_expanded.dart';

class NewsBox extends StatelessWidget {
  final NewsData news;
  const NewsBox({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    //final isPortrait = size.aspectRatio < 1.0;
    final body = [
      Image.network(
        news.imageURL,
        fit: BoxFit.fitWidth,
        errorBuilder: (context, error, stackTrace) => Image.asset(
          'assets/not_found.png',
          fit: BoxFit.fitWidth,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              news.title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              news.description,
              overflow: TextOverflow.clip,
              style: const TextStyle(color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(news.source), Text(news.publishedAt)],
            )
          ],
        ),
      )
    ];
    return TextButton(
        onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => NewsExpanded(news: news))),
        child: Container(
            margin: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                boxShadow: const <BoxShadow>[],
                border: Border.all(color: Colors.teal, width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(10.0))),
            child: Column(
              children: body,
            )));
  }
}
