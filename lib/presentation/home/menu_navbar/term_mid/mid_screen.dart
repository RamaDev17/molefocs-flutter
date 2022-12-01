import 'package:flutter/material.dart';

import '../../../style/color.dart';
import '../menu_navbar.dart';
import 'mid_hasil.dart';
import 'mid_question.dart';

class midTermReview extends StatefulWidget {
  const midTermReview({Key? key}) : super(key: key);

  @override
  _midTermReviewState createState() => _midTermReviewState();
}

class _midTermReviewState extends State<midTermReview> {
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
                    SizedBox(
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
                              "We are now living in what some people call the digital age. Teachers use projectors to give presentations. PCs are also used for administrative purposes-schools such as word processors to write letters, and databases to keep records of students and teachers. A school website allows teachers to publish exercises for student to complete online. Student can also enroll for courses via the website and parents can download official reports.\n\nIn banks, computers store information about the money held by each customer and enable staff to access large databases and to carry out financial transactions at high speed. They also control the cashpoints, or ATMs (automatic teller machines), which dispense money to customers by the use of a PIN-protected card. People use a Chip and PIN card to pay for goods and services.",
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
                                builder: (context) => HasilMid(score)));
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
