import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/routes/local_service.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'Flutter Health App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: const TextTheme(
          headline5:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          headline4:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
      darkTheme: ThemeData.dark(),
         
      getPages: GetRouteService().routesGet,
    );
  }
}
