import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashBodyVariantWidgetTwo extends StatelessWidget {
  const SplashBodyVariantWidgetTwo(
      {Key? key,
      this.colorOne,
      this.headText,
      this.headFontSize,
      this.subText,
      this.colorTwo,
      this.navigateTo,
      this.fontColor,
      this.colorFAB,
      this.headFontColor, this.iconColor})
      : super(key: key);
  final Color? colorOne;
  final String? headText;
  final double? headFontSize;
  final String? subText;
  final Color? colorTwo;
  final String? navigateTo;
  final Color? fontColor;
  final Color? colorFAB;
  final Color? headFontColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height / 2,
          width: double.infinity,
          color: colorOne!,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: headText!,
                  style: GoogleFonts.fredokaOne(
                      fontSize: headFontSize!, color: headFontColor!),
                ),
                const TextSpan(text: '\n'),
                TextSpan(
                  text: subText!,
                  style: GoogleFonts.aBeeZee(color: fontColor!),
                ),
              ],
            ),
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                color: colorTwo!,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () => Navigator.pushNamed(context, navigateTo!),
              backgroundColor: colorFAB!,
              child:  Icon(
                Icons.arrow_forward,
                color: iconColor!,
              ),
              heroTag: 'hello',
            )
          ],
        ),
      ],
    );
  }
}
