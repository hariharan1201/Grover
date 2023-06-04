// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlbumBanner extends StatefulWidget {
  AlbumBanner(
      {super.key,
      required this.imagePath,
      required this.ablum,
      required this.artist});
  String imagePath, ablum, artist;

  @override
  State<AlbumBanner> createState() => _AlbumBannerState();
}

class _AlbumBannerState extends State<AlbumBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(widget.imagePath), fit: BoxFit.fill)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 20, 5, 5),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
            child: Container(
              height: 65,
              width: 200,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromRGBO(53, 53, 95, 0.498),
                      offset: Offset(0, 0),
                      blurRadius: 0,
                      spreadRadius: 0)
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.ablum,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(widget.artist,
                            style: const TextStyle(color: Colors.white))
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.forward,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
