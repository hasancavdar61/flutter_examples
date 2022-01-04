import 'package:flutter/material.dart';
import 'package:sociaworld/custom_method.dart';
import 'package:sociaworld/screens/splash/splash_sceen.dart';

class RouteServices {
  Map<String, WidgetBuilder> get routes => {
        '/': (context) => const SplashScreen(),
        '/HomePage': (context) => const CustomCardView(),
      
      };
}

class NavShorts {
  Future<Object?> named(BuildContext context, String root) =>
      Navigator.pushNamed(context, root);
}
