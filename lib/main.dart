import 'package:flutter/material.dart';
import 'package:newsapp/pages/animated_home_page.dart';
import 'package:newsapp/pages/main_page.dart';
import 'package:newsapp/pages/splash_screen.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const AnimatedHomePage(),
      routes: {
        "/": (context) => const SplashScreen(),
        "/home": (context) => const MainPage()
      },
      initialRoute: "/",
    );
  }
}
