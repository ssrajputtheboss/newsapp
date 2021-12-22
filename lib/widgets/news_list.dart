import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/news_data.dart';
import 'package:newsapp/services/api.dart';
import 'package:newsapp/widgets/news_box.dart';
import 'error_widget.dart' as err;

class NewsList extends StatelessWidget {
  const NewsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        //initialData: const <NewsData>[],
        future: fetchStartNews(),
        builder: (context, AsyncSnapshot<List<NewsData>> snapshot) {
          if (snapshot.hasError) {
            return const err.ErrorWidget();
          }
          if (snapshot.hasData) {
            return ListView(
              children:
                  snapshot.data!.map((news) => NewsBox(news: news)).toList(),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
