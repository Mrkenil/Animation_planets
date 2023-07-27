import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splash_Screen extends StatefulWidget {
  const splash_Screen({super.key});

  @override
  State<splash_Screen> createState() => _splash_ScreenState();
}

class _splash_ScreenState extends State<splash_Screen> {
  bool cumplit = false;
  readbool() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool? val = preferences.getBool("complete");
    if (val != null) {
      cumplit = val;
    }
  }

  @override
  void initState() {
    super.initState();
    readbool();
    Timer(Duration(seconds: 3), () {
      (cumplit)
          ? Navigator.of(context)
              .pushReplacementNamed('home_page', result: false)
          : Navigator.of(context)
              .pushReplacementNamed('one_time_puzzle', result: false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2019/10/17/09/18/cartoon-4556429_1280.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "AstroPuzzle",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Container(
                  height: 650,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
