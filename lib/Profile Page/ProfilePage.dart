import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groover/Profile%20Page/ProflieCard.dart';
import 'package:just_audio/just_audio.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 34, 61),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
          child: Column(
            children: [
              const ProfileCard(),
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.settings,
                        color: Colors.white54,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Settings',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.profile_circled,
                        color: Colors.white54,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Manage Account',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.exit_to_app,
                        color: Colors.white54,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign Out',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
