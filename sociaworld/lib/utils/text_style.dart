import 'package:flutter/material.dart';

class SplashTextStyle {
  TextStyle bold() {
    return const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: Colors.white,
    );
  }

  TextStyle semiBold() {
    return const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 24,
      color: Colors.white,
    );
  }
}
