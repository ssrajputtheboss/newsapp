import 'package:flutter/cupertino.dart';

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Some Error Occurred"),
    );
  }
}
