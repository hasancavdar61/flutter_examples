import 'package:flutter/material.dart';
import 'package:sociaworld/widgets/splash_bodies/splash_body_variant_two.dart';

class SplashScreenBodyVariantTwo extends StatelessWidget {
  const SplashScreenBodyVariantTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SplashBodyVariantWidgetTwo(
      colorOne: Colors.black,
      headText: 'Ai',
      headFontSize: 120.0,
      subText: 'Artificial Intelligence',
      colorTwo: Colors.white,
      navigateTo: '/SplashVariantTwo',
      fontColor: Colors.white,
      colorFAB: Colors.black,
      headFontColor: Colors.white,
      iconColor: Colors.white,
    );
  }
}

class VariantScreenTwo extends StatelessWidget {
  const VariantScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SplashBodyVariantWidgetTwo(
      colorOne: Colors.white,
      headText: 'You',
      headFontSize: 120.0,
      subText: 'Take advantage of the opportunities offered by AI.',
      colorTwo: Colors.black,
      navigateTo: '/SplashVariantThree',
      fontColor: Colors.black,
      colorFAB: Colors.white,
      headFontColor: Colors.black,
      iconColor: Colors.black,
    );
  }
}

class VariantScreenThree extends StatelessWidget {
  const VariantScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SplashBodyVariantWidgetTwo(
      colorOne: Colors.black,
      headText: 'We',
      headFontSize: 120.0,
      subText: 'Welcome to our AI world human.',
      colorTwo: Colors.white,
      navigateTo: '/AIPage',
      fontColor: Colors.white,
      colorFAB: Colors.black,
      headFontColor: Colors.white,
      iconColor: Colors.white,
    );
  }
}
