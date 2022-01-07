// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sociaworld/ai_page.dart';
import 'package:sociaworld/custom_method.dart';
import 'package:sociaworld/health_page.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sociaworld/screens/splash/splash_variant_one/body.dart';
import 'package:sociaworld/screens/splash/splash_variant_one/splash_screen.dart';
import 'package:sociaworld/screens/splash/splash_variant_two/body.dart';
import 'package:sociaworld/screens/sub_screens/sub_screen_one/sub_rustem_one/sub_rustem_one.dart';
import 'package:sociaworld/screens/sub_screens/sub_screen_one/sub_rustem_one/sub_rustem_one_sec.dart';
import 'package:sociaworld/screens/sub_screens/sub_screen_one/sub_screen_one.dart';
import 'package:sociaworld/screens/sub_screens/sub_screen_three/sub_screen_three.dart';
import 'package:sociaworld/screens/sub_screens/sub_screen_two/sub_screen_two.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => CustomCardView()),
        GetPage(name: '/HomePage', page: () => SplashScreenVariantOne()),
        GetPage(name: '/SplashSecond', page: () => SecondScreen()),
        GetPage(name: '/SplashThird', page: () => ThirdScreen()),
        GetPage(name: '/SplashFourth', page: () => FourthScreen()),
        GetPage(name: '/SplashFifth', page: () => FifthScreen()),
        GetPage(name: '/HealthPage', page: () => HealthPage()),
        GetPage(
            name: '/SplashVariantOne',
            page: () => SplashScreenBodyVariantTwo()),
        GetPage(name: '/SplashVariantTwo', page: () => VariantScreenTwo()),
        GetPage(name: '/SplashVariantThree', page: () => VariantScreenThree()),
        GetPage(name: '/AIPage', page: () => AIPage()),
        GetPage(name: '/SubScreenOne', page: () => SubScreenOne()),
        GetPage(name: '/SubScreenTwo', page: () => SubScreenTwo()),
        GetPage(name: '/SubScreenThree', page: () => SubScreenThree()),
        GetPage(name: '/RustemScreenOne', page: () => RustemScreenOne()),
        GetPage(name: '/RustemScreenTwo', page: () => RustemScreenTwo()),
      ],

      // L10N

      //localizationsDelegates: AppLocalizations.localizationsDelegates,
      //supportedLocales: AppLocalizations.supportedLocales,

      debugShowCheckedModeBanner: false,
      title: 'proje',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/',
    );
  }
}
