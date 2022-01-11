import 'package:flutter/material.dart';

class BottomBarWithItems extends StatelessWidget {
  const BottomBarWithItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 22.0,
      selectedFontSize: 10.0,
      unselectedFontSize: 8.0,
      unselectedItemColor: Colors.deepPurpleAccent.shade400.withOpacity(0.5),
      type: BottomNavigationBarType.fixed,
      items: [
        buildWidget(Icons.home_filled, 'Home'),
        buildWidget(Icons.calendar_today, 'Calendar'),
        buildWidget(Icons.message, 'Messages'),
        buildWidget(Icons.settings, 'Settings')
      ],
    );
  }
}

buildWidget(IconData iconData, String label) {
  return BottomNavigationBarItem(icon: Icon(iconData), label: label);
}
