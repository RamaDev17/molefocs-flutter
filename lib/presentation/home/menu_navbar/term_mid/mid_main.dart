import 'package:flutter/material.dart';
import 'package:molefocs/presentation/home/menu_navbar/term_mid/mid_screen.dart';
import 'package:molefocs/presentation/style/color.dart';

import '../../homepage.dart';
import '../menu_navbar.dart';

class midMain extends StatefulWidget {
  const midMain({super.key});

  @override
  State<midMain> createState() => _midMainState();
}

class _midMainState extends State<midMain> {
  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    // final lebarAll = MediaQuery.of(context).size.width;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: AppColor.pripmaryColor,
          drawer: const NavBar(),
          appBar: AppBar(
            title: const Text(
              'Mid Term Review',
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
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SizedBox(
              height: tinggiAll,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                        "Read the text below to answer number 1 to number 5 \n",
                        style: TextStyle(
                            fontFamily: 'OpenSans Bold',
                            color: Colors.white,
                            fontSize: 14)),
                    Text(
                        "We are now living in what some people call the digital age, meaning that computers have become an essential part of our lives. Teachers use projectors and interactive whiteboards to give presentations and teach sciences, history or language courses. PCs are also used for administrative purposes-schools use word processors to write letters, and databases to keep records of students and teachers.\n\nA school website allows teachers to publish exercises for student to complete online. Student can also enroll for courses via the website and parents can download official reports.\n\nIn banks, computers store information about the money held by each customer and enable staff to access large databases and to carry out financial transactions at high speed.\n\nThey also control the cashpoints, or ATMs (automatic teller machines), which dispense money to customers by the use of a PIN-protected card. People use a Chip and PIN card to pay for goods and services.\n\nInstead of using a signature to verify payments, customers are asked to enter a four-digit personal identification number (PIN), the same number used at cashpoints; this system makes transactions more secure. With online banking, clients can easily pay bills and transfer money from the comfort of their homes.\n",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: 'OpenSans Normal',
                            color: Colors.white,
                            fontSize: 12))
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const midTermReview()));
              // Add your onPressed code here!
            },
            label: const Text('Start'),
            icon: const Icon(Icons.star),
            backgroundColor: Colors.blue,
          ),
        ));
  }
}
