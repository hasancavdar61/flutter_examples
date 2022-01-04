import 'dart:ui';

import 'package:flutter/material.dart';

class SplashBlurBackground extends StatefulWidget {
  const SplashBlurBackground({Key? key}) : super(key: key);

  @override
  _SplashBlurBackgroundState createState() => _SplashBlurBackgroundState();
}

class _SplashBlurBackgroundState extends State<SplashBlurBackground> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/splash_background.jpg'))),
        child:
            BackdropFilter(filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 2.0)));
  }
}
