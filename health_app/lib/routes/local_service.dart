import 'package:get/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:health_app/home_page.dart';
import 'package:health_app/screens/detail_page.dart';
import 'package:health_app/screens/detail_page_five.dart';
import 'package:health_app/screens/detail_page_four.dart';
import 'package:health_app/screens/detail_page_six.dart';
import 'package:health_app/screens/detail_page_three.dart';
import 'package:health_app/screens/detail_page_two.dart';
import 'package:health_app/screens/help_center.dart';
import 'package:health_app/screens/input_page.dart';
import 'package:health_app/screens/splash_screen/splash_screen_widget.dart';

class GetRouteService {
  get routesGet => [
        gettingRoutes('/', const SplashScreen()),
        gettingRoutes('/HomePage', const HomePage()),
        gettingRoutes('/DetailPage', const DetailPage()),
        gettingRoutes('/DetailPageTwo', const DetailPageTwo()),
        gettingRoutes('/DetailPageThree', const DetailPageThree()),
        gettingRoutes('/DetailPageFour', const DetailPageFour()),
        gettingRoutes('/DetailPageFive', const DetailPageFive()),
        gettingRoutes('/DetailPageSix', const DetailPageSix()),
        gettingRoutes('/HelpCenter', HelpCenter()),
        gettingRoutes('/InputPage', InputUserAndThemeSelect()),
      ];
}

GetPage<dynamic> gettingRoutes(String name, Widget pageGetter) => GetPage(
      name: name,
      page: () => pageGetter,
    );
