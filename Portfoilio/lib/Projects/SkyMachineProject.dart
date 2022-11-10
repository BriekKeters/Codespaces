import 'package:flutter/material.dart';
import 'package:portfoilio/Projects/Projects.dart';
import 'package:video_player/video_player.dart';

import '../Pages/Pages.dart';


class SkyMachineProjectState extends BaseProjectState{
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'SkyMachine Trailer.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
              },
          ),
          backgroundColor: Colors.blue,
        title: Text(widget.title),
    ),
    body:  Center(
      child: ListView(
        children: const [
           Image(image: AssetImage("SkyMachineLogo.png"),),
           Text("SkyMachine was my group project of my final year of DEA. It was made for the company MyMachine, they work together with different schools and age groups to get the ideas of kids into a real life machine, in our case a game.\nI worked together with 5 other people for this project:\n2 programmers (Beau Bemindt, Matrthias Seys) and\n3 artists (Flo Schollaert, Charlotte Eisfeld, Lore Coppens)\nYou can find more info about the whole progress report on their website.",
      ),
        ],

      ),
    ),
    );
  }

}