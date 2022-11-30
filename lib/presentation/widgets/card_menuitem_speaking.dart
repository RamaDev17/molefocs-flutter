import 'package:flutter/material.dart';
import 'package:molefocs/model/speaking_model.dart';

import '../home/home_speaking/speaking_detail.dart';

class SpeakingMenuItemCard extends StatefulWidget {
  final int index1;

  const SpeakingMenuItemCard({required this.index1});

  @override
  State<SpeakingMenuItemCard> createState() => _SpeakingMenuItemCardState();
}

class _SpeakingMenuItemCardState extends State<SpeakingMenuItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SpeakingDetail(index1: widget.index1)));
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
                          image: AssetImage(spk[widget.index1].image)))),
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
                      "Speaking",
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
                      spk[widget.index1].name,
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
