import 'package:flutter/material.dart';

class AIPage extends StatelessWidget {
  const AIPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: 'go',
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/'),
          child: const Text('Go Home'),
        ),
      ),
    );
  }
}
