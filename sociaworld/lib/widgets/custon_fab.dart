import 'package:flutter/material.dart';


class CenterFAB extends StatelessWidget {
  const CenterFAB({
    Key? key,
    this.iconFAB,
    this.onPressed,
  }) : super(key: key);
  final IconData? iconFAB;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 4,
      onPressed: onPressed!,
      child: Icon(iconFAB!),
    );
  }
}