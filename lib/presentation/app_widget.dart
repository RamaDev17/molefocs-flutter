import 'dart:async';

import 'package:flutter/material.dart';
import 'home/splashscreen_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return const MaterialApp(
      title: 'Molefocs App',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
