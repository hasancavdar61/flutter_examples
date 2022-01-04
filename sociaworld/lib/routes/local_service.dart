import 'package:flutter/material.dart';
import 'package:sociaworld/custom_method.dart';

class RouteServices {
  Map<String, WidgetBuilder> get routes => {
        '/HomePage': (context) => const CustomCardView(),
      };
}

class NavShorts {
  Future<Object?> named(BuildContext context, String root) =>
      Navigator.pushNamed(context, root);
}
