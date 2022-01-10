import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:health_app/screens/splash_screen/page_data.dart';

// ignore: must_be_immutable
class SplashScreenBody extends StatelessWidget {
  final List<PageData> pages = [
    PageData(
      icon: Icons.format_size,
      title: "Welcome to\nHealth Clinic",
      textColor: Colors.black,
      bgColor: Colors.deepPurpleAccent,
    ),
    PageData(
      icon: Icons.hdr_weak,
      title: "Everything\nFor your Health",
      bgColor: const Color(0xFFFFFFFF),
    ),
    PageData(
      icon: Icons.bubble_chart,
      title: "Now it is\nStart time",
      bgColor: const Color(0xFF0043D0),
      textColor: Colors.white,
    ),
  ];

  SplashScreenBody({Key? key}) : super(key: key);

  List<Color> get colors => pages.map((p) => p.bgColor).toList();
  var data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        onFinish: () => Get.offAllNamed("/InputPage"),
        colors: colors,
        //          opacityFactor: 1.0,
        //          scaleFactor: 0.0,
        radius: 30,
        curve: Curves.ease,
        duration: const Duration(seconds: 2),
        itemCount: pages.length,
        //          verticalPosition: 0.7,
        //          direction: Axis.vertical,
        //          itemCount: pages.length,
        //          physics: NeverScrollableScrollPhysics(),
        itemBuilder: (index, value) {
          PageData page = pages[index % pages.length];
          // For example scale or transform some widget by [value] param
          //            double scale = (1 - (value.abs() * 0.4)).clamp(0.0, 1.0);
          return Theme(
            data: ThemeData(
              textTheme: TextTheme(
                headline6: TextStyle(
                  color: page.textColor,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Helvetica',
                  letterSpacing: 0.0,
                  fontSize: 17,
                ),
                subtitle2: TextStyle(
                  color: page.textColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
              ),
            ),
            child: PageCard(page: page),
          );
        },
      ),
    );
  }
}

class PageCard extends StatelessWidget {
  final PageData page;

  const PageCard({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildPicture(context),
          const SizedBox(height: 30),
          _buildText(context),
        ],
      ),
    );
  }

  Widget _buildText(BuildContext context) {
    return Text(
      page.title!,
      style: Theme.of(context).textTheme.headline6,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildPicture(
    BuildContext context, {
    double size = 190,
    double iconSize = 170,
  }) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(60.0)),
        color: page.bgColor
//            .withBlue(page.bgColor.blue - 40)
            .withGreen(page.bgColor.green + 20)
            .withRed(page.bgColor.red - 100)
            .withAlpha(90),
      ),
      margin: const EdgeInsets.only(
        top: 140,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned.fill(
            child: RotatedBox(
              quarterTurns: 2,
              child: Icon(
                page.icon,
                size: iconSize + 20,
                color: page.bgColor
                    .withBlue(page.bgColor.blue - 10)
                    .withGreen(220),
              ),
            ),
            right: -5,
            bottom: -5,
          ),
          Positioned.fill(
            child: RotatedBox(
              quarterTurns: 5,
              child: Icon(
                page.icon,
                size: iconSize + 20,
                color: page.bgColor.withGreen(66).withRed(77),
              ),
            ),
          ),
          Icon(
            page.icon,
            size: iconSize,
            color: page.bgColor.withRed(111).withGreen(220),
          ),
        ],
      ),
    );
  }
}
