import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sociaworld/routes/local_service.dart';
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
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 20,
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                        style: SplashTextStyle().bold(),
                        children: <TextSpan>[
                          TextSpan(text: splashHeaderText),
                          const TextSpan(text: '\n'),
                          TextSpan(
                              text: splashHeaderSubText,
                              style: SplashTextStyle().semiBold()),
                        ])),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: GestureDetector(
                onTap: () => NavShorts().named(context, '/HomePage'),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      splashButtonLabel!,
                      style: SplashTextStyle().semiBold(),
                    )),
              ),
            ),
          ],
        )
      ],
    );
  }
}
