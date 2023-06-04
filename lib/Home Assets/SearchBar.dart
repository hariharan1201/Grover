import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 65,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.white12,
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromRGBO(53, 53, 95, 0.5),
                      offset: Offset(0, 0),
                      blurRadius: 0,
                      spreadRadius: 0)
                ],
                borderRadius: BorderRadius.circular(10)),
            child: const Icon(
              CupertinoIcons.list_dash,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 65,
            width: 280,
            decoration: BoxDecoration(
                color: Colors.white12,
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromRGBO(53, 53, 95, 0.498),
                      offset: Offset(0, 0),
                      blurRadius: 0,
                      spreadRadius: 0),
                ],
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      color: Colors.white,
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Serach"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
