import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_clinic/screens/main_page.dart';
import 'package:health_clinic/utils/static.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: textTheme(),
      ),
      home: const MainPage(),
    );
  }
}


