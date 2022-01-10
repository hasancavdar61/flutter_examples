import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    Key? key,
    this.iconData,
    this.labelText,
  }) : super(key: key);

  final IconData? iconData;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Material(
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        shadowColor: Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        color: Colors.grey.shade100,
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: [
              FaIcon(iconData!),
              const SizedBox(
                height: 5.0,
              ),
              Text(labelText!),
            ],
          ),
        ),
      ),
    );
  }
}


class CustomButtonPaddingWidget extends StatelessWidget {
  const CustomButtonPaddingWidget({
    Key? key,
    this.iconData,
    this.labelText,
    this.iconDataTwo,
    this.iconDataThree,
    this.labelTextTwo,
    this.labelTextThree,
  }) : super(key: key);

  final IconData? iconData;
  final IconData? iconDataTwo;
  final IconData? iconDataThree;

  final String? labelText;
  final String? labelTextTwo;
  final String? labelTextThree;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomMaterialButton(
            iconData: iconData!,
            labelText: labelText,
          ),
          CustomMaterialButton(
            iconData: iconDataTwo!,
            labelText: labelTextTwo,
          ),
          CustomMaterialButton(
            iconData: iconDataThree!,
            labelText: labelTextThree,
          ),
        ],
      ),
    );
  }
}

