import 'package:flutter/material.dart';
import 'package:molefocs/model/langfoc_model.dart';

import '../../widgets/card_menuitem_langfoc.dart';

class LangfocHome extends StatefulWidget {
  const LangfocHome({Key? key}) : super(key: key);

  @override
  State<LangfocHome> createState() => _LangfocHomeState();
}

class _LangfocHomeState extends State<LangfocHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: lfc.length,
        itemBuilder: (context, int key) {
          return LangfocMenuItemCard(index1: key);
        },
      ),
    );
  }
}
