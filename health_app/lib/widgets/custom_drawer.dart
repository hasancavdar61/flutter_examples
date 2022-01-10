import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          createHeader(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: drawerBody(),
          )
        ],
      ),
    );
  }
}

Widget createHeader() {
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    decoration: const BoxDecoration(color: Colors.deepPurpleAccent),
    child: Stack(
      children: const [
        Positioned(
          bottom: 12.0,
          left: 16.0,
          child: Text(
            "Health Clinic",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    ),
  );
}

Widget drawerBody() {
  return Column(
    children: [
      ElevatedButton(
        onPressed: () => Get.toNamed("/HelpCenter"),
        child: const Text('Help Center'),
      ),
    ],
  );
}
