import 'package:flutter/material.dart';
import 'package:molefocs/presentation/home/menu_navbar/term_final/final_question.dart';

import '../../../style/color.dart';
import '../menu_navbar.dart';
import 'final_hasil.dart';

class finalTermReview extends StatefulWidget {
  const finalTermReview({Key? key}) : super(key: key);

  @override
  _finalTermReviewState createState() => _finalTermReviewState();
}

class _finalTermReviewState extends State<finalTermReview> {
  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "NEXT";
  bool answered = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    final tinggiLayar = MediaQuery.of(context).size.height;
    // final lebarLayar = MediaQuery.of(context).size.width;

    return Scaffold(
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
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: PageView.builder(
            controller: _controller!,
            onPageChanged: (page) {
              if (page == questions.length - 1) {
                setState(() {
                  btnText = "View Score";
                });
              }
              setState(() {
                answered = false;
              });
            },
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Question ${index + 1}/10",
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),

                  // add reading question
                  if (index <= 4) ...[
                    const Text(
                      "Read the text below to answer number 1 to number 5",
                      style: TextStyle(
                          fontFamily: 'OpenSans Normal',
                          color: Colors.white,
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 150,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.blueAccent)),
                        child: const SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Text(
                              "The Internet is a global system of interconnected computer networks that use the standard Internet Protocol Suite (TCP/IP) to serve billions of users worldwide. It is a network of networks that consists of millions of private, public, academic, business, and government networks, of local to global scope, that are linked by a broad array of electronic, wireless and optical networking technologies. The Internet carries a vast range of information resources and services, such as the inter-linked hypertext documents of the World Wide Web (WWW) and the infrastructure to support electronic mail. \n\nMost traditional communications media including telephone, music, film, and television are reshaped or redefined by the Internet, giving birth to new services such as Voice over Internet Protocol (VoIP) and IPTV. Newspaper, book and other print publishing are adapting to Web site technology, or are reshaped into blogging and web feeds. \n \nThe Internet has enabled or accelerated new forms of human interactions through instant messaging, Internet forums, and social networking. Online shopping has boomed both for major retail outlets and small artisans and traders. Business-to-business and financial services on the Internet affect supply chains across entire industries. \n\nSource:  Brainly.co.id - https://brainly.co.id/tugas/16984626#readmore",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontFamily: 'OpenSans Normal',
                                  color: Colors.white,
                                  fontSize: 14)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],

                  SizedBox(
                    width: double.infinity,
                    height: index <= 4 ? tinggiLayar * 0.1 : tinggiLayar * 0.25,
                    child: Text(
                      "${questions[index].question}",
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  for (int i = 0; i < questions[index].answers!.length; i++)
                    Container(
                      width: double.infinity,
                      height:
                          index <= 4 ? tinggiLayar * 0.067 : tinggiLayar * 0.09,
                      margin: const EdgeInsets.only(
                          bottom: 5.0, left: 20.0, right: 15.0),
                      child: RawMaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        fillColor: btnPressed
                            ? questions[index].answers!.values.toList()[i]
                                ? Colors.green
                                : Colors.red
                            : AppColor.secondaryColor,
                        onPressed: !answered
                            ? () {
                                if (questions[index]
                                    .answers!
                                    .values
                                    .toList()[i]) {
                                  score++;
                                  print("yes");
                                } else {
                                  print("no");
                                }
                                setState(() {
                                  btnPressed = true;
                                  answered = true;
                                });
                              }
                            : null,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                              questions[index].answers!.keys.toList()[i],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontFamily: 'OpenSans Bold',
                                  color: Colors.white,
                                  fontSize: 12)),
                        ),
                      ),
                    ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      if (_controller!.page?.toInt() == questions.length - 1) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HasilFinal(score)));
                      } else {
                        _controller!.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInExpo);

                        setState(() {
                          btnPressed = false;
                        });
                      }
                    },
                    shape: const StadiumBorder(),
                    fillColor: Colors.blue,
                    padding: const EdgeInsets.all(5.0),
                    elevation: 0.0,
                    child: Text(
                      btnText,
                      style: const TextStyle(
                          fontFamily: 'OpenSans Bold',
                          color: Colors.white,
                          fontSize: 12),
                    ),
                  )
                ],
              );
            },
            itemCount: questions.length,
          )),
    );
  }
}
