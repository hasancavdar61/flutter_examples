import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sociaworld/ai_page.dart';
import 'package:sociaworld/custom_method.dart';
import 'package:sociaworld/health_page.dart';
import 'package:sociaworld/screens/splash/splash_variant_one/body.dart';
import 'package:sociaworld/screens/splash/splash_variant_one/splash_screen.dart';
import 'package:sociaworld/screens/splash/splash_variant_two/body.dart';
import 'package:get/get.dart';

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

class GetRouteService {
  get routesGett => {
        gettingRoutes('/', const CustomCardView()),
        gettingRoutes('/HomePage', const SplashScreenVariantOne()),
        gettingRoutes('/SplashSecond', const SecondScreen()),
        gettingRoutes('/SplashThird', const ThirdScreen()),
        gettingRoutes('/SplashFourth', const FourthScreen()),
        gettingRoutes('/SplashFifth', const FifthScreen()),
        gettingRoutes('/HealthPage', const HealthPage()),
        gettingRoutes('/SplashVariantOne', const SplashScreenBodyVariantTwo()),
        gettingRoutes('/SplashVariantTwo', const VariantScreenTwo()),
        gettingRoutes('/SplashVariantThree', const VariantScreenThree()),
        gettingRoutes('/AIPage', const AIPage()),
      };

  GetPage<dynamic> gettingRoutes(String name, Widget pageGetter) => GetPage(
        name: name,
        page: () => pageGetter,
      );
}

GetPage<dynamic> routesGet() {
  return GetPage(name: '/', page: ()=> const SecondScreen());
}

