// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'TrackContainer.dart';

class TrackListViewer extends StatefulWidget {
  const TrackListViewer({super.key});

  @override
  State<TrackListViewer> createState() => _TrackListViewerState();
}

class _TrackListViewerState extends State<TrackListViewer> {
  List<String> link = [
    "https://codeskulptor-demos.commondatastorage.googleapis.com/pang/paza-moduless.mp3",
    "https://commondatastorage.googleapis.com/codeskulptor-assets/Epoq-Lepidoptera.ogg",
    "https://commondatastorage.googleapis.com/codeskulptor-assets/sounddogs/soundtrack.mp3"
  ];
  List TrackDetial = [
    ["Images/arcade.png", "Arcade", "Arcade"],
    ["Images/nature.webp", "Nature", "Pluto"],
    ["Images/hororr.jpg", "Horror", "Devil club"]
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: link.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(15, 2, 15, 5),
              child: Column(
                children: [
                  TrackBox(
                    track: link[index],
                    imagePath: TrackDetial[index][0],
                    album: TrackDetial[index][1],
                    artist: TrackDetial[index][2],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
