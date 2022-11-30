import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:molefocs/presentation/home/home_langfoc/langfoc_home.dart';
import 'package:molefocs/presentation/home/home_listening/listening_home.dart';
import 'package:molefocs/presentation/home/home_speaking/speaking_home.dart';
import 'package:molefocs/presentation/home/home_writing/writing_home.dart';
import 'package:molefocs/presentation/widgets/information_widget.dart';
import 'package:molefocs/presentation/widgets/title_langfoc_widget.dart';
import 'package:molefocs/presentation/widgets/title_listening_widget.dart';
import 'package:molefocs/presentation/widgets/title_reading_widget.dart';
import 'package:molefocs/presentation/widgets/title_writing_widget.dart';

import '../widgets/title_speaking_widget.dart';
import 'home_reading/reading_home.dart';
import 'menu_navbar/menu_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: "OpenSans Bold",
              color: Colors.white),
        ),
        actions: [
          Image.asset(
            'assets/images/logo_molefocs.png',
            scale: 50,
          )
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff0096ff), Color(0xff6610f2)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight)),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.white10,
          child: Column(
            children: const <Widget>[
              SizedBox(
                height: 10.0,
              ),
              InformationWidget(),
              TitleSpeaking(),
              SpeakingHome(),
              TitleReading(),
              ReadingHome(),
              TitleListening(),
              ListeningHome(),
              TitleWriting(),
              WritingHome(),
              TitleLangfoc(),
              LangfocHome(),
              SizedBox(
                height: 10.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
