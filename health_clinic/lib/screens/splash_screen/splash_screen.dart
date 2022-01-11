import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3), () => Get.offNamed('/InputPage'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/splash_back.jpg'),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Container(
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent.shade400.withOpacity(0.4),
            ),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: 'Health',
                    style: GoogleFonts.staatliches(fontSize: 60)),
                const TextSpan(text: '\n'),
                TextSpan(
                    text: 'Clinic',
                    style: GoogleFonts.staatliches(fontSize: 30)),
                const TextSpan(text: '\n\n'),
                TextSpan(
                    text: "'For your healthy life.'",
                    style: GoogleFonts.redHatDisplay(fontSize: 15)),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
