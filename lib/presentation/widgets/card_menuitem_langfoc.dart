import 'package:flutter/material.dart';
import 'package:molefocs/model/langfoc_model.dart';
import 'package:molefocs/model/speaking_model.dart';

import '../home/home_langfoc/langfoc_detail.dart';

class LangfocMenuItemCard extends StatefulWidget {
  final int index1;

  const LangfocMenuItemCard({required this.index1});

  @override
  State<LangfocMenuItemCard> createState() => _LangfocMenuItemCardState();
}

class _LangfocMenuItemCardState extends State<LangfocMenuItemCard> {
  @override
  Widget build(BuildContext context) {
    final lebarAll = MediaQuery.of(context).size.width;
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LangfocDetail(index1: widget.index1)));
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
                          image: AssetImage(lfc[widget.index1].image)))),
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
                      "Languange Focus",
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
                      lfc[widget.index1].name,
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
