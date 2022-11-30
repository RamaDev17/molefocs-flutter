import 'package:flutter/material.dart';

class TitleReading extends StatelessWidget {
  const TitleReading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20.0, bottom: 10.0),
          child: SizedBox(
            height: tinggiAll * 0.09,
            child: Row(
              children: [
                Image.asset("assets/images/icons_reading.png"),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Reading",
                      style: TextStyle(
                          fontFamily: "OpenSans Bold",
                          color: Colors.black,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      "Understand the Text and Go to the Task",
                      style: TextStyle(
                          fontFamily: "OpenSans Reguler",
                          color: Colors.black54,
                          fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
