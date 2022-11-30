import 'package:flutter/material.dart';
import 'package:molefocs/model/listening_model.dart';

import '../../widgets/card_menuitem_listening.dart';

class ListeningHome extends StatefulWidget {
  const ListeningHome({Key? key}) : super(key: key);

  @override
  State<ListeningHome> createState() => _WritingHomeState();
}

class _WritingHomeState extends State<ListeningHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: lst.length,
        itemBuilder: (context, int key) {
          return ListeningMenuItemCard(index1: key);
        },
      ),
    );
  }
}
