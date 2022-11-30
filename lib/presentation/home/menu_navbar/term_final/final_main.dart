import 'package:flutter/material.dart';
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
    // final lebarAll = MediaQuery.of(context).size.width;

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
                        "The Internet is a global system of interconnected computer networks that use the standard Internet Protocol Suite (TCP/IP) to serve billions of users worldwide. It is a network of networks that consists of millions of private, public, academic, business, and government networks, of local to global scope, that are linked by a broad array of electronic, wireless and optical networking technologies. The Internet carries a vast range of information resources and services, such as the inter-linked hypertext documents of the World Wide Web (WWW) and the infrastructure to support electronic mail. \n\nMost traditional communications media including telephone, music, film, and television are reshaped or redefined by the Internet, giving birth to new services such as Voice over Internet Protocol (VoIP) and IPTV. Newspaper, book and other print publishing are adapting to Web site technology, or are reshaped into blogging and web feeds. \n \nThe Internet has enabled or accelerated new forms of human interactions through instant messaging, Internet forums, and social networking. Online shopping has boomed both for major retail outlets and small artisans and traders. Business-to-business and financial services on the Internet affect supply chains across entire industries. \n",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: 'OpenSans Normal',
                            color: Colors.white,
                            fontSize: 12)),
                    Text(
                        "Source:  Brainly.co.id - https://brainly.co.id/tugas/16984626#readmore",
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
                      builder: (context) => const finalTermReview()));
              // Add your onPressed code here!
            },
            label: const Text('Start'),
            icon: const Icon(Icons.star),
            backgroundColor: Colors.blue,
          ),
        ));
  }
}
