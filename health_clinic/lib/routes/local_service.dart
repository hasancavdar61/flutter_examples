import 'package:get/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:health_clinic/screens/detail_screens/doctor_detail_page.dart';
import 'package:health_clinic/screens/detail_screens/doctor_detail_page_three.dart';
import 'package:health_clinic/screens/detail_screens/doctor_detail_page_two.dart';
import 'package:health_clinic/screens/input_page.dart';
import 'package:health_clinic/screens/main_page.dart';
import 'package:health_clinic/screens/splash_screen/splash_screen.dart';


class GetRouteService {
  get routesGet => [
        gettingRoutes('/', const SplashScreen()),
        gettingRoutes('/InputPage', const InputPage()),
        gettingRoutes('/MainPage', const MainPage()),
        gettingRoutes('/DoctorOne',  const DoctorDetail()),
        gettingRoutes('/DoctorTwo',  const DoctorDetailTwo()),
        gettingRoutes('/DoctorThree',  const DoctorDetailThree()),

       
      ];
}

GetPage<dynamic> gettingRoutes(String name, Widget pageGetter) => GetPage(
      name: name,
      page: () => pageGetter,
    );

