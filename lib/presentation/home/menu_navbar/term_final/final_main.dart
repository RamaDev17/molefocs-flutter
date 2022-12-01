import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:molefocs/presentation/home/menu_navbar/term_final/final_screen.dart';
import 'package:molefocs/presentation/style/color.dart';

import '../../homepage.dart';
import '../menu_navbar.dart';

class finalMain extends StatefulWidget {
  const finalMain({super.key});

  @override
  State<finalMain> createState() => _finalMainState();
}

class _finalMainState extends State<finalMain> {
  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    final lebarAll = MediaQuery.of(context).size.width;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: AppColor.pripmaryColor,
          drawer: const NavBar(),
          appBar: AppBar(
            title: const Text(
              'Final Term Review',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: "OpenSans Bold",
                  color: Colors.white),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
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
          body: Container(
            height: tinggiAll,
            width: lebarAll,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset("assets/lottie/quiz.json",
                    width: 250, height: 250),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const finalTermReview()));
                      // Add your onPressed code here!
                    },
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Start",
                        style: TextStyle(fontSize: 16),
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
