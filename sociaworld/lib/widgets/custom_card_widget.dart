import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    Key? key,
    required this.imageUrl,
    this.buttonTextOne,
    this.buttonTextTwo,
    this.iconData,
    this.listSubtitle,
    this.listTitle,
    this.borderRadius,
    this.namedRouteOne,
    this.namedRouteTwo,
  }) : super(key: key);

  final BorderRadiusGeometry? borderRadius;
  final String imageUrl;
  final String? listTitle;
  final String? listSubtitle;
  final String? buttonTextOne;
  final String? namedRouteOne;
  final String? buttonTextTwo;
  final String? namedRouteTwo;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      //Cards Widgets Properties
      clipBehavior: Clip.antiAlias,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius!,
      ),
      //Custom Cards Widgets Here.
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(imageUrl),
            ListTile(
              title: Text(
                listTitle!,
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                listSubtitle!,
                textAlign: TextAlign.center,
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Get.toNamed(namedRouteOne!),
                  child: Text(buttonTextOne!),
                ),
                ElevatedButton(
                  onPressed: () => Get.toNamed(namedRouteTwo!),
                  child: Text(buttonTextTwo!),
                ),
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'becomeAHero',
                  child: ElevatedButton(
                    onPressed: () => Get.toNamed('/SubScreenOne'),
                    child: const Text('ScreenOne'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => Get.toNamed('/SubScreenTwo'),
                  child: const Text('ScreenTwo'),
                ),
                ElevatedButton(
                  onPressed: () => Get.toNamed('/SubScreenThree'),
                  child: const Text('ScreenThree'),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(iconData),
            ),
          ],
        ),
      ),
    );
  }
}
