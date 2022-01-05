import 'dart:ui';

import 'package:flutter/material.dart';

class SplashScreenBackgroundVariant extends StatefulWidget {
  const SplashScreenBackgroundVariant({Key? key, this.imageName, this.color, this.imageFit})
      : super(key: key);
  final String? imageName;
  final Color? color;
  final BoxFit? imageFit;

  @override
  _SplashScreenBackgroundVariantState createState() =>
      _SplashScreenBackgroundVariantState();
}

class _SplashScreenBackgroundVariantState
    extends State<SplashScreenBackgroundVariant> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: widget.imageFit!,
          image: AssetImage(widget.imageName!),
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
        child: Container(
          color: widget.color,
        ),
      ),
    );
  }
}
