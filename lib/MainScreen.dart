import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:groover/Ablum%20Assets/AlbumPage.dart';
import 'package:groover/Home%20Assets/Home.dart';
import 'package:groover/Profile%20Page/ProfilePage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = const [HomeScreen(), Ablum(), Profile()];
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 34, 34, 61),
        // ignore: unnecessary_const
        body: pages.elementAt(selectedPage),
        bottomNavigationBar: Container(
          height: 75,
          width: double.infinity,
          child: GNav(
            backgroundColor: const Color.fromARGB(255, 34, 34, 61),
            color: Colors.white,
            gap: 10,
            // tab button border
            activeColor: Colors.white,
            tabs: const [
              GButton(
                icon: CupertinoIcons.home,
                text: "Home",
              ),
              GButton(
                icon: CupertinoIcons.music_albums,
                text: "Albums",
              ),
              GButton(
                icon: CupertinoIcons.person,
                text: "Profile",
              )
            ],
            onTabChange: (index) {
              setState(() {
                selectedPage = index;
              });
            },
          ),
        ));
  }
}
