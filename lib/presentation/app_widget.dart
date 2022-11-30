import 'package:flutter/material.dart';
import 'home/splashscreen_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Molefocs App',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
