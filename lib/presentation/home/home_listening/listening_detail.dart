import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:molefocs/model/listening_model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../menu_navbar/menu_navbar.dart';

class ListeningDetail extends StatefulWidget {
  final int index1;
  const ListeningDetail({Key? key, required this.index1}) : super(key: key);

  @override
  State<ListeningDetail> createState() => _ListeningDetailState();
}

class _ListeningDetailState extends State<ListeningDetail> {
  bool isPlaying = false;
  bool audioplayed = false;
  bool shouldPop = true;

  AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    final tinggiAll = MediaQuery.of(context).size.height;
    final lebarAll = MediaQuery.of(context).size.width;
    bool url = lst[widget.index1].url;
    return WillPopScope(
        child: Scaffold(
          backgroundColor: Colors.white,
          drawer: const NavBar(),
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Listening',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: "OpenSans Bold",
                  color: Colors.white),
            ),
            actions: [
              IconButton(
                  onPressed: () async {
                    String audioAsset = lst[widget.index1].audio;
                    ByteData bytes = await rootBundle
                        .load(audioAsset); //load audio from assets
                    Uint8List audiobytes = bytes.buffer
                        .asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
                    if (!isPlaying && !audioplayed) {
                      int result = await player.playBytes(audiobytes);
                      if (result == 1) {
                        //play success
                        setState(() {
                          isPlaying = true;
                          audioplayed = true;
                        });
                      } else {
                        // ignore: avoid_print
                        print("Error while playing audio.");
                      }
                    } else if (audioplayed && !isPlaying) {
                      int result = await player.resume();
                      if (result == 1) {
                        //resume success
                        setState(() {
                          isPlaying = true;
                          audioplayed = true;
                        });
                      } else {
                        // ignore: avoid_print
                        print("Error on resume audio.");
                      }
                    } else {
                      int result = await player.pause();
                      if (result == 1) {
                        //pause success
                        setState(() {
                          isPlaying = false;
                        });
                      } else {
                        // ignore: avoid_print
                        print("Error on pause audio.");
                      }
                    }
                  },
                  icon: isPlaying
                      ? const Icon(Icons.pause_outlined)
                      : const Icon(Icons.play_arrow)),
              IconButton(
                  onPressed: () {
                    player.stop();
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.backspace))
            ],
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff0096ff), Color(0xff6610f2)],
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight)),
            ),
          ),
          body: SizedBox(
            width: lebarAll,
            height: tinggiAll * 0.9,
            child: SfPdfViewer.asset(lst[widget.index1].desc,
                enableTextSelection: true),
          ),
        ),
        onWillPop: () async {
          player.stop();
          return shouldPop;
        });
  }
}
