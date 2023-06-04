import 'package:flutter/material.dart';

import 'Banner.dart';

class BannerArea1 extends StatefulWidget {
  const BannerArea1({super.key});

  @override
  State<BannerArea1> createState() => _BannerArea1State();
}

class _BannerArea1State extends State<BannerArea1> {
  @override
  Widget build(BuildContext context) {
    List<String> path = [
      "Images/cover1.jpg",
      "Images/cover2.jpg",
      "Images/cover3.jpg"
    ];
    List TrackDetial = [
      ["Cloud", "Brain sarubbi"],
      ["Prism", "Glass Animals"],
      ["Blossom", "Flowers"]
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: path.length,
            itemBuilder: (context, index) {
              return BannerBox(
                ImagePath: path[index],
                Album: TrackDetial[index][0],
                artist: TrackDetial[index][1],
              );
            }),
      ),
    );
  }
}
