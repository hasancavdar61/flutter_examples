import 'package:flutter/material.dart';


class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    this.bottomNavBarItem,
  }) : super(key: key);

  final List<BottomNavigationBarItem>? bottomNavBarItem;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: bottomNavBarItem!);
  }
}