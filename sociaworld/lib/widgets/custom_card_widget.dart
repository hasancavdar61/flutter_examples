import 'package:flutter/material.dart';


class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    Key? key,
    required this.imageUrl,
    this.buttonFunctionOne,
    this.buttonFunctionTwo,
    this.buttonTextOne,
    this.buttonTextTwo,
    this.iconData,
    this.listSubtitle,
    this.listTitle,
    this.borderRadius,
  }) : super(key: key);

  final BorderRadiusGeometry? borderRadius;
  final String imageUrl;
  final String? listTitle;
  final String? listSubtitle;
  final String? buttonTextOne;
  final VoidCallback? buttonFunctionOne;
  final String? buttonTextTwo;
  final VoidCallback? buttonFunctionTwo;
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
                  onPressed: buttonFunctionOne,
                  child: Text(buttonTextOne!),
                ),
                ElevatedButton(
                  onPressed: buttonFunctionTwo,
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