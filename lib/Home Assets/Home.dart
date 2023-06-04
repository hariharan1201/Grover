import 'package:flutter/material.dart';

import 'BannerArea1.dart';
import 'SearchBar.dart';
import 'TrackListViewer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchArea(),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 25, 0, 10),
            child: Text(
              "Trending right now",
              style: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BannerArea1(),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 15),
            child: Text(
              "Track List",
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
          ),
          TrackListViewer()
        ],
      ),
    );
  }
}
