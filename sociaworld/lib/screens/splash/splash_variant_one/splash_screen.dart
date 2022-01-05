import 'package:flutter/material.dart';
import 'package:sociaworld/screens/splash/splash_variant_one/body.dart';

class SplashScreenVariantOne extends StatefulWidget {
  const SplashScreenVariantOne({Key? key}) : super(key: key);

  @override
  _SplashScreenVariantOneState createState() => _SplashScreenVariantOneState();
}

class _SplashScreenVariantOneState extends State<SplashScreenVariantOne> {
  @override
  Widget build(BuildContext context) {
    return const SplashScreenBodyVariantOne();
  }
}
