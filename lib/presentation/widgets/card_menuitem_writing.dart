import 'package:flutter/material.dart';
import 'package:molefocs/model/writing_model.dart';
import '../home/home_writing/writing_detail.dart';

class WritingMenuItemCard extends StatefulWidget {
  final int index1;

  const WritingMenuItemCard({required this.index1});

  @override
  State<WritingMenuItemCard> createState() => _WritingMenuItemCardState();
}

class _WritingMenuItemCardState extends State<WritingMenuItemCard> {
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
                  builder: (context) => WritingDetail(index1: widget.index1)));
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
                          image: AssetImage(wrt[widget.index1].image)))),
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
                      "Writing",
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
                      wrt[widget.index1].name,
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
