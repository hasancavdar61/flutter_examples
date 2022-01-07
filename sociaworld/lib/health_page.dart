import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: 'go',
        child: ElevatedButton(
          onPressed: () => Get.offAllNamed('/'),
          child: const Text('Go Home'),
        ),
      ),
    );
  }
}
