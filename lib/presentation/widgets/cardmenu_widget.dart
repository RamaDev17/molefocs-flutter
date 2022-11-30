import 'package:flutter/material.dart';

class CardMenuWidget extends StatelessWidget {
  const CardMenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        InkWell(
          child: SizedBox(
              height: tinggiAll * 0.16,
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.00)),
                      gradient: LinearGradient(
                          colors: [
                            Colors.yellowAccent,
                            Color.fromARGB(255, 165, 92, 8)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                    ),
                    child: AspectRatio(
                      aspectRatio: 3 / 1,
                      child: Row(
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 1 / 1,
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              child: Image.asset(
                                "assets/images/home_image1.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          AspectRatio(
                            aspectRatio: 5 / 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "Unit 1",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "OpenSans Normal",
                                  ),
                                ),
                                Text(
                                  "Introduce Yourself to Digital World!",
                                  style: TextStyle(
                                    fontFamily: "OpenSans Bold",
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ),
        InkWell(
          child: SizedBox(
              height: tinggiAll * 0.16,
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.00)),
                      gradient: LinearGradient(
                          colors: [
                            Colors.yellowAccent,
                            Color.fromARGB(255, 34, 119, 8)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                    ),
                    child: AspectRatio(
                      aspectRatio: 3 / 1,
                      child: Row(
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 1 / 1,
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              child: Image.asset(
                                "assets/images/home_image1.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          AspectRatio(
                            aspectRatio: 5 / 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "Unit 2",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "OpenSans Normal",
                                  ),
                                ),
                                Text(
                                  "Go Beyond Computer Essentials",
                                  style: TextStyle(
                                    fontFamily: "OpenSans Bold",
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ),
        InkWell(
          child: SizedBox(
              height: tinggiAll * 0.16,
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.00)),
                      gradient: LinearGradient(
                          colors: [
                            Colors.yellowAccent,
                            Color.fromARGB(255, 12, 161, 142)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                    ),
                    child: AspectRatio(
                      aspectRatio: 3 / 1,
                      child: Row(
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 1 / 1,
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              child: Image.asset(
                                "assets/images/home_image1.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          AspectRatio(
                            aspectRatio: 5 / 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "Unit 3",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "OpenSans Normal",
                                  ),
                                ),
                                Text(
                                  "Inside the System",
                                  style: TextStyle(
                                    fontFamily: "OpenSans Bold",
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ),
        InkWell(
          child: SizedBox(
              height: tinggiAll * 0.16,
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.00)),
                      gradient: LinearGradient(
                          colors: [
                            Colors.yellowAccent,
                            Color.fromARGB(255, 12, 79, 156)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                    ),
                    child: AspectRatio(
                      aspectRatio: 3 / 1,
                      child: Row(
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 1 / 1,
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              child: Image.asset(
                                "assets/images/home_image1.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          AspectRatio(
                            aspectRatio: 5 / 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "Unit 4",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "OpenSans Normal",
                                  ),
                                ),
                                Text(
                                  "You Must Know Basic Software",
                                  style: TextStyle(
                                    fontFamily: "OpenSans Bold",
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ),
        InkWell(
          child: SizedBox(
              height: tinggiAll * 0.16,
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.00)),
                      gradient: LinearGradient(
                          colors: [
                            Colors.yellowAccent,
                            Color.fromARGB(255, 22, 37, 179)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                    ),
                    child: AspectRatio(
                      aspectRatio: 3 / 1,
                      child: Row(
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 1 / 1,
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              child: Image.asset(
                                "assets/images/home_image1.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          AspectRatio(
                            aspectRatio: 5 / 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "Unit 5",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "OpenSans Normal",
                                  ),
                                ),
                                Text(
                                  "Keep In Touch with The Internet",
                                  style: TextStyle(
                                    fontFamily: "OpenSans Bold",
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ),
        InkWell(
          child: SizedBox(
              height: tinggiAll * 0.16,
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.00)),
                      gradient: LinearGradient(
                          colors: [
                            Colors.yellowAccent,
                            Color.fromARGB(255, 92, 15, 163)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                    ),
                    child: AspectRatio(
                      aspectRatio: 3 / 1,
                      child: Row(
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 1 / 1,
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              child: Image.asset(
                                "assets/images/home_image1.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          AspectRatio(
                            aspectRatio: 5 / 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "Unit 6",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "OpenSans Normal",
                                  ),
                                ),
                                Text(
                                  "Network",
                                  style: TextStyle(
                                    fontFamily: "OpenSans Bold",
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ),
        InkWell(
          child: SizedBox(
              height: tinggiAll * 0.16,
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.00)),
                      gradient: LinearGradient(
                          colors: [
                            Colors.yellowAccent,
                            Color.fromARGB(255, 138, 15, 83)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                    ),
                    child: AspectRatio(
                      aspectRatio: 3 / 1,
                      child: Row(
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 1 / 1,
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              child: Image.asset(
                                "assets/images/home_image1.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          AspectRatio(
                            aspectRatio: 5 / 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "Unit 7",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "OpenSans Normal",
                                  ),
                                ),
                                Text(
                                  "Let’s go to Bright Future in IT Jobs",
                                  style: TextStyle(
                                    fontFamily: "OpenSans Bold",
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
