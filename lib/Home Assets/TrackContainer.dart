// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class TrackBox extends StatefulWidget {
  TrackBox(
      {super.key,
      required this.track,
      required this.imagePath,
      required this.album,
      required this.artist});
  String track, imagePath, album, artist;
  @override
  State<TrackBox> createState() => _TrackBoxState();
}

class _TrackBoxState extends State<TrackBox> {
  final player = AudioPlayer();
  bool action = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white12),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 75,
                  width: 74,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(widget.imagePath),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.album,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      widget.artist,
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () async {
                      setState(() {
                        action = !action;
                      });
                      await player.setAudioSource(
                          AudioSource.uri(Uri.parse(widget.track)));
                      action ? player.play() : player.pause();
                    },
                    icon: Icon(
                      action ? CupertinoIcons.pause : CupertinoIcons.play,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () async {
                      setState(() {
                        action = !action;
                      });
                      await player.setAudioSource(
                          AudioSource.uri(Uri.parse(widget.track)));
                      action ? null : player.stop();
                    },
                    icon: Icon(
                      action ? CupertinoIcons.stop : null,
                      color: Colors.white,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
