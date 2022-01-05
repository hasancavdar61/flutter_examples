import 'package:flutter/material.dart';
import 'package:sociaworld/widgets/splash_bodies/splash_body_variant.dart';

class SplashScreenBodyVariantOne extends StatefulWidget {
  const SplashScreenBodyVariantOne({Key? key}) : super(key: key);

  @override
  _SplashScreenBodyVariantOneState createState() =>
      _SplashScreenBodyVariantOneState();
}

class _SplashScreenBodyVariantOneState
    extends State<SplashScreenBodyVariantOne> {
  @override
  Widget build(BuildContext context) {
    return SplashBodyVariantWidget(
      assetName: 'assets/img_women.jpg',
      color: Colors.red.withOpacity(0.5),
      imageFit: BoxFit.cover,
      splashHeaderText: 'Welcome to',
      splashMainText: 'HEAL',
      fontSize: 80.0,
      splashSubText: '',
      subTextSize: 15.0,
      labelFAB: 'Go',
      colorFAB: Colors.red,
      onPressed: () => Navigator.pushNamed(context, '/SplashSecond'),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashBodyVariantWidget(
      assetName: 'assets/img_yoga.jpg',
      color: Colors.blue.withOpacity(0.5),
      imageFit: BoxFit.cover,
      splashHeaderText: 'For Your',
      splashMainText: 'HEALTY',
      fontSize: 80.0,
      splashSubText: 'This app has tips and tricks for a healthy life.',
      subTextSize: 15.0,
      labelFAB: 'Go',
      colorFAB: Colors.red,
      onPressed: () => Navigator.pushNamed(context, '/SplashThird'),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashBodyVariantWidget(
      assetName: 'assets/img_therapy.jpg',
      color: Colors.amber.withOpacity(0.3),
      imageFit: BoxFit.cover,
      splashHeaderText: 'Relax',
      splashMainText: 'THERAPY',
      fontSize: 65.0,
      splashSubText: 'It will give you a massage effect.',
      subTextSize: 15.0,
      labelFAB: 'Go',
      colorFAB: Colors.red,
      onPressed: () => Navigator.pushNamed(context, '/SplashFourth'),
    );
  }
}

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashBodyVariantWidget(
      assetName: 'assets/img_pregnant.jpg',
      color: Colors.red.withOpacity(0.00001),
      imageFit: BoxFit.cover,
      splashHeaderText: 'Before be mum',
      splashMainText: 'PREGNANT',
      fontSize: 60.0,
      splashSubText: 'Special content for expectant mothers.',
      subTextSize: 15.0,
      labelFAB: 'Go',
      colorFAB: Colors.red,
      onPressed: () => Navigator.pushNamed(context, '/SplashFifth'),
    );
  }
}

class FifthScreen extends StatelessWidget {
  const FifthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashBodyVariantWidget(
      assetName: 'assets/img_breathe.jpg',
      color: Colors.green.withOpacity(0.5),
      imageFit: BoxFit.cover,
      splashHeaderText: 'Last step to',
      splashMainText: 'START',
      fontSize: 80.0,
      splashSubText: 'Take a deep breath and focus.',
      subTextSize: 15.0,
      labelFAB: "Let's go",
      colorFAB: Colors.red,
      onPressed: () => Navigator.pushNamed(context, '/HealthPage'),
    );
  }
}
