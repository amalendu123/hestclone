import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:histia/pages/Homescreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initState() {
    super.initState();
    Timer(
        // ignore: avoid_print
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Homescreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      color: Colors.black,
      height: 100,
      width: 100,
      child: Image.asset(
        'lib/images/logo.png',
      ),
    ));
  }
}
