import 'package:flutter/material.dart';
import 'package:molefocs/presentation/home/menu_navbar/term_mid/mid_screen.dart';

import '../../../style/color.dart';
import '../../homepage.dart';
import '../menu_navbar.dart';
import 'package:lottie/lottie.dart';

class HasilMid extends StatefulWidget {
  int score;
  HasilMid(this.score, {Key? key}) : super(key: key);

  @override
  _HasilMidState createState() => _HasilMidState();
}

class _HasilMidState extends State<HasilMid> {
  String result = "";
  @override
  Widget build(BuildContext context) {
    if (widget.score <= 5) {
      setState(() {
        result = "assets/lottie/tryagain.json";
      });
    } else if (widget.score <= 8) {
      setState(() {
        result = "assets/lottie/good.json";
      });
    } else {
      setState(() {
        setState(() {
          result = "assets/lottie/excellent.json";
        });
      });
    }
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text(
          'Score Mid Term Review',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: "OpenSans Bold",
              color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.backspace))
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff0096ff), Color(0xff6610f2)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight)),
        ),
      ),
      backgroundColor: AppColor.pripmaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Lottie.asset(
              result,
              width: 150,
              height: 150,
            ),
          ),
          const Text(
            "Your score is",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const midTermReview(),
                      ));
                },
                child: const Text(
                  "Try again",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                },
                child: const Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
