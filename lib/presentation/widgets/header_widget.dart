import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only(top: 25),
      height: tinggiAll * 0.1,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: SizedBox(
              height: 25,
              child: Row(
                children: <Widget>[
                  Image.asset("assets/images/logo1.png"),
                  const Text(
                    "olefocs",
                    style: TextStyle(
                        fontFamily: "OpenSans Bold",
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
