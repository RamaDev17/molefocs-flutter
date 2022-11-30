import 'package:flutter/material.dart';
import 'package:molefocs/model/speaking_model.dart';

import '../../widgets/card_menuitem_speaking.dart';

class SpeakingHome extends StatefulWidget {
  const SpeakingHome({Key? key}) : super(key: key);

  @override
  State<SpeakingHome> createState() => _SpeakingHomeState();
}

class _SpeakingHomeState extends State<SpeakingHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: spk.length,
        itemBuilder: (context, int key) {
          return SpeakingMenuItemCard(index1: key);
        },
      ),
    );
  }
}
