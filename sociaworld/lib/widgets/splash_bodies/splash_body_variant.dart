// ignore_for_file: unnecessary_const

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociaworld/widgets/splash_backgrounds/splash_background_variant.dart';

class SplashBodyVariantWidget extends StatelessWidget {
  const SplashBodyVariantWidget({
    Key? key,
    this.splashHeaderText,
    this.splashMainText,
    this.splashSubText,
    this.labelFAB,
    this.assetName,
    this.color,
    this.imageFit,
    this.onPressed,
    this.fontSize,
    this.colorFAB,
    this.subTextSize,
  }) : super(key: key);
  final String? splashHeaderText;
  final String? splashMainText;
  final String? splashSubText;
  final String? labelFAB;
  final String? assetName;
  final Color? color;
  final BoxFit? imageFit;
  final VoidCallback? onPressed;
  final double? fontSize;
  final Color? colorFAB;
  final double? subTextSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SplashScreenBackgroundVariant(
          imageName: assetName!,
          color: color!,
          imageFit: imageFit!,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            SafeArea(
              child: DelayedDisplay(
                delay: const Duration(seconds: 1),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: splashHeaderText!,
                        style: GoogleFonts.aBeeZee(fontSize: 18.0),
                      ),
                      const TextSpan(text: '\n'),
                      TextSpan(
                        text: splashMainText!,
                        style: GoogleFonts.fredokaOne(
                          fontSize: fontSize!,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const TextSpan(text: '\n'),
                      TextSpan(
                        text: splashSubText!,
                        style: GoogleFonts.aBeeZee(fontSize: subTextSize!),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 28.0, bottom: 25.0),
                child: FloatingActionButton.extended(
                  heroTag: 'hello',
                  elevation: 8.0,
                  backgroundColor: colorFAB!,
                  onPressed: onPressed!,
                  label: Text(labelFAB!),
                  icon: const Icon(Icons.arrow_forward),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
