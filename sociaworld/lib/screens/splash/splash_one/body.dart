import 'package:flutter/material.dart';
import 'package:sociaworld/widgets/splash_bodies/splash_body.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  _SplashScreenBodyState createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  Widget build(BuildContext context) {
    return const SplashBodyWidget(
        splashHeaderText: 'Hoş Geldin!',
        splashHeaderSubText: 'Sizler için paha biçilmez bir uygulamamız var.',
        splashButtonLabel: 'Başla');
  }
}
