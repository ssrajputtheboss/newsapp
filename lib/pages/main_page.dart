import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/widgets/news_list.dart';
import 'package:newsapp/widgets/search_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("NewsApp"),
        ),
        body: const NewsList());
  }
}
