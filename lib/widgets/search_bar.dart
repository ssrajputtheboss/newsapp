import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final Function onSearch;

  SearchBar({Key? key, required this.onSearch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
          hintText: "Search...",
          suffix: IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () => onSearch(_controller.text),
          ),
          contentPadding: const EdgeInsets.all(10.0)),
    );
  }
}
