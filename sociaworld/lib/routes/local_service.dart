import 'package:flutter/material.dart';
import 'package:sociaworld/custom_method.dart';
import 'package:sociaworld/health_page.dart';
import 'package:sociaworld/screens/splash/splash_variant_one/body.dart';
import 'package:sociaworld/screens/splash/splash_variant_one/splash_screen.dart';

class RouteServices {
  Map<String, WidgetBuilder> get routes => {
        '/': (context) => const SplashScreenVariantOne(),
        '/HomePage': (context) => const CustomCardView(),
        '/SplashSecond': (context) => const SecondScreen(),
        '/SplashThird': (context) => const ThirdScreen(),
        '/SplashFourth': (context) => const FourthScreen(),
        '/SplashFifth': (context) => const FifthScreen(),
        '/HealthPage' : (context) => const HealthPage(),
      };
}

class NavShorts {
  Future<Object?> named(BuildContext context, String root) =>
      Navigator.pushNamed(context, root);
}
