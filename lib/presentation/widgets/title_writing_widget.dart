import 'package:flutter/material.dart';

class TitleWriting extends StatelessWidget {
  const TitleWriting({
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
                Image.asset("assets/images/icons_writing.png"),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Writing",
                      style: TextStyle(
                          fontFamily: "OpenSans Bold",
                          color: Colors.black,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      "Feel Free to Dance your Finger with Letters",
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
