// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sociaworld/custom_method.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: CustomCardView(),
    );
  }
}
