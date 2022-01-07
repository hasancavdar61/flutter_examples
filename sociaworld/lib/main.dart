// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sociaworld/ai_page.dart';
import 'package:sociaworld/custom_method.dart';
import 'package:sociaworld/health_page.dart';
import 'package:sociaworld/routes/local_service.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sociaworld/screens/splash/splash_variant_one/body.dart';
import 'package:sociaworld/screens/splash/splash_variant_one/splash_screen.dart';
import 'package:sociaworld/screens/splash/splash_variant_two/body.dart';

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
        GetPage(name: '/SplashVariantOne', page: () => SplashScreenBodyVariantTwo()),
        GetPage(name: '/SplashVariantTwo', page: () => VariantScreenTwo()),
        GetPage(name: '/SplashVariantThree', page: () => VariantScreenThree()),
        GetPage(name: '/AIPage', page: () => AIPage()),
      ],

      // L10N

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      debugShowCheckedModeBanner: false,
      title: 'proje',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/',
    );
  }
}
