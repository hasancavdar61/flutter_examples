import 'package:flutter/material.dart';

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
                  onPressed: () => Navigator.pushNamed(context, namedRouteOne!),
                  child: Text(buttonTextOne!),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, namedRouteTwo!),
                  child: Text(buttonTextTwo!),
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
