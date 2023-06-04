// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerBox extends StatefulWidget {
  BannerBox(
      {super.key,
      required this.ImagePath,
      required this.Album,
      required this.artist});
  String ImagePath, Album, artist;

  @override
  State<BannerBox> createState() => _BannerBoxState();
}

class _BannerBoxState extends State<BannerBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
                image: AssetImage(widget.ImagePath), fit: BoxFit.fill)),
        height: 180,
        width: 200,
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
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
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.Album,
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
            ),
          )
        ]));
  }
}
