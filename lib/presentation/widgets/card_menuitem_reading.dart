import 'package:flutter/material.dart';
import 'package:molefocs/model/reading_model.dart';

import '../home/home_reading/reading_detail.dart';

class ReadingMenuItemCard extends StatefulWidget {
  final int index1;

  const ReadingMenuItemCard({required this.index1});

  @override
  State<ReadingMenuItemCard> createState() => _ReadingMenuItemCardState();
}

class _ReadingMenuItemCardState extends State<ReadingMenuItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ReadingDetail(index1: widget.index1)));
        },
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(rdg[widget.index1].image)))),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                flex: 3,
                child: Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Reading",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: "OpenSans Normal",
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      rdg[widget.index1].name,
                      style: const TextStyle(
                        fontFamily: "OpenSans Bold",
                        fontSize: 14,
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
