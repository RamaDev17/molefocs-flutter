import 'dart:async';
import 'package:flutter/material.dart';
import 'package:molefocs/presentation/style/color.dart';

import 'homepage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    // TODO: implement initState
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final lebarAll = MediaQuery.of(context).size.width;
    final tinggiAll = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: tinggiAll,
        width: lebarAll,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff0096ff), Color(0xff6610f2)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo_molefocs.png',
              width: 70,
              height: 70,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Molefocs",
              style: TextStyle(
                  fontFamily: 'OpenSans Bold',
                  color: Colors.white,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
