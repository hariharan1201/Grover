import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white12),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Zenitsu Agatsuma',
                    style: TextStyle(fontSize: 26, color: Colors.white)),
                Text('giveandget@user.id.com',
                    style: TextStyle(fontSize: 14, color: Colors.white)),
              ],
            ),
            Container(
              height: 125,
              width: 125,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
