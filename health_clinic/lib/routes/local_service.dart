import 'package:get/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:health_clinic/screens/detail_screens/doctor_detail_page.dart';
import 'package:health_clinic/screens/input_page.dart';
import 'package:health_clinic/screens/main_page.dart';
import 'package:health_clinic/screens/splash_screen/splash_screen.dart';

///[GetX] named route [GetRouteService] with [gettingRoutes] method.
class GetRouteService {
  get routesGet => [
        gettingRoutes('/', const SplashScreen()),
        gettingRoutes('/InputPage', const InputPage()),
        gettingRoutes('/MainPage', const MainPage()),
        gettingRoutes('/DoctorDetail',  const DoctorDetail()),
       

       
      ];
}

/// self create [gettingRoutes] method.
GetPage<dynamic> gettingRoutes(String name, Widget pageGetter) => GetPage(
      name: name,
      page: () => pageGetter,
    );

