import 'package:flutter/cupertino.dart';
import 'package:newsapp/pages/main_page.dart';
import 'package:newsapp/pages/splash_screen.dart';

class AnimatedHomePage extends StatefulWidget {
  const AnimatedHomePage({Key? key}) : super(key: key);

  @override
  _AnimatedHomePageState createState() => _AnimatedHomePageState();
}

class _AnimatedHomePageState extends State<AnimatedHomePage> {
  bool _isSplashScreen = true;

  void _toggleSplashScreen() =>
      setState(() => _isSplashScreen = !_isSplashScreen);

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstChild: SplashScreen(),
        secondChild: const MainPage(),
        crossFadeState: _isSplashScreen
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: const Duration(seconds: 2));
  }
}
