import 'package:flutter/material.dart';
import 'package:sociaworld/widgets/custom_card_widget.dart';

class CustomCardView extends StatelessWidget {
  const CustomCardView({Key? key}) : super(key: key);
  static const String imageUrl =
      'https://btkcampus.com.tr/files/mobil_dev./ios_gelistirme_dev.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomCardWidget(
            borderRadius: BorderRadius.circular(10.0),
            imageUrl: imageUrl,
            listTitle: 'image',
            listSubtitle: 'image subtitle',
            buttonTextOne: 'Yes',
            buttonFunctionOne: () {},
            buttonTextTwo: 'No',
            buttonFunctionTwo: () {},
            iconData: Icons.cancel,
          )
        ],
      ),
    );
  }
}



void customFunction() {}
