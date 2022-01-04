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
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/splash_background.jpg'),
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 3.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.090),
          ),
        ),
      ),
    );
  }
}
