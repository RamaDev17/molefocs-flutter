import 'package:flutter/material.dart';

class TitleAndSubtitle extends StatelessWidget {
  const TitleAndSubtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 20.0),
          child: SizedBox(
            height: tinggiAll * 0.09,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  "Materi",
                  style: TextStyle(
                      fontFamily: "OpenSans Bold",
                      color: Colors.black,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  "Materi teknologi bahasa inggris",
                  style: TextStyle(
                      fontFamily: "OpenSans Reguler",
                      color: Colors.black54,
                      fontSize: 14),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
