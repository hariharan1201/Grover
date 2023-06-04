import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopIcon extends StatelessWidget {
  TopIcon({super.key, required this.icon});
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Center(child: icon),
    );
  }
}
