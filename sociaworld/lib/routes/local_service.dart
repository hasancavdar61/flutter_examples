import 'package:flutter/material.dart';
import 'package:sociaworld/ai_page.dart';
import 'package:sociaworld/custom_method.dart';
import 'package:sociaworld/health_page.dart';
import 'package:sociaworld/screens/splash/splash_variant_one/body.dart';
import 'package:sociaworld/screens/splash/splash_variant_one/splash_screen.dart';
import 'package:sociaworld/screens/splash/splash_variant_two/body.dart';

class RouteServices {
  Map<String, WidgetBuilder> get routes => {
        '/': (context) => const CustomCardView(),
        '/HomePage': (context) => const SplashScreenVariantOne(),
        '/SplashSecond': (context) => const SecondScreen(),
        '/SplashThird': (context) => const ThirdScreen(),
        '/SplashFourth': (context) => const FourthScreen(),
        '/SplashFifth': (context) => const FifthScreen(),
        '/HealthPage': (context) => const HealthPage(),
        '/SplashVariantOne': (context) => const SplashScreenBodyVariantTwo(),
        '/SplashVariantTwo': (context) => const VariantScreenTwo(),
        '/SplashVariantThree': (context) => const VariantScreenThree(),
        '/AIPage': (context) => const AIPage(),
      };
}

class NavShorts {
  Future<Object?> named(BuildContext context, String root) =>
      Navigator.pushNamed(context, root);
}
