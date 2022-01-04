import 'package:flutter/material.dart';
import 'package:sociaworld/utils/text_style.dart';
import 'package:sociaworld/widgets/splash_background.dart';

class SplashBodyWidget extends StatelessWidget {
  const SplashBodyWidget({
    Key? key,
    required this.splashHeaderText,
    required this.splashHeaderSubText,
    required this.splashButtonLabel,
  }) : super(key: key);

  final String? splashHeaderText;
  final String? splashHeaderSubText;
  final String? splashButtonLabel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const SplashBlurBackground(),
        RichText(
            textAlign: TextAlign.start,
            text:
                TextSpan(style: SplashTextStyle().bold(), children: <TextSpan>[
              TextSpan(text: splashHeaderText),
              TextSpan(text: splashHeaderSubText),
            ])),
        TextButton(onPressed: () {}, child: Text(splashButtonLabel!))
      ],
    );
  }
}
