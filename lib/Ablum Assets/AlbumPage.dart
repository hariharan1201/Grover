import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groover/Ablum%20Assets/AblumBanner.dart';
import 'package:groover/Ablum%20Assets/TopIcons.dart';

class Ablum extends StatefulWidget {
  const Ablum({super.key});

  @override
  State<Ablum> createState() => _AblumState();
}

class _AblumState extends State<Ablum> {
  List TrackDetial = [
    ["Images/arcade.png", "Arcade", "Arcade"],
    ["Images/nature.webp", "Nature", "Pluto"],
    ["Images/hororr.jpg", "Horror", "Devil club"],
    ["Images/cover1.jpg", "Cloud", "Brain sarubbi"]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 34, 61),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 15, bottom: 10),
              child: Text(
                "Recent favourites",
                style: TextStyle(fontSize: 34, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: SizedBox(
                height: 400,
                width: double.infinity,
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  children: [
                    AlbumBanner(
                      ablum: TrackDetial[0][1],
                      artist: TrackDetial[0][2],
                      imagePath: TrackDetial[0][0],
                    ),
                    AlbumBanner(
                      ablum: TrackDetial[1][1],
                      artist: TrackDetial[1][2],
                      imagePath: TrackDetial[1][0],
                    ),
                    AlbumBanner(
                      ablum: TrackDetial[2][1],
                      artist: TrackDetial[2][2],
                      imagePath: TrackDetial[2][0],
                    ),
                    AlbumBanner(
                      ablum: TrackDetial[3][1],
                      artist: TrackDetial[3][2],
                      imagePath: TrackDetial[3][0],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
