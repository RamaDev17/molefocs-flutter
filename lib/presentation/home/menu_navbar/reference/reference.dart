import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../homepage.dart';
import '../menu_navbar.dart';

// ignore: camel_case_types
class reference extends StatefulWidget {
  const reference({super.key});

  @override
  State<reference> createState() => _referenceState();
}

// ignore: camel_case_types
class _referenceState extends State<reference> {
  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    final lebarAll = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text(
            'Acknowledgements',
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
            color: Colors.white,
            width: lebarAll,
            height: tinggiAll,
            child: SfPdfViewer.asset(
              "assets/pdf/reference_molefocs.pdf",
              enableTextSelection: true,
              enableHyperlinkNavigation: true,
              canShowHyperlinkDialog: true,
            )),
      ),
    );
  }
}
