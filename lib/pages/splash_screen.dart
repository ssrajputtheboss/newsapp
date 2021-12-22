import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: const Center(
        child: Text(
          "NewsApp",
          style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              wordSpacing: 2),
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () => Navigator.pushNamedAndRemoveUntil(
            context, "/home", ModalRoute.withName("/home")),
        child: Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white30, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.lightBlueAccent, Colors.lightGreenAccent]),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                "Get Started",
                style: TextStyle(fontSize: 24),
              ),
              Icon(Icons.arrow_forward_outlined)
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
