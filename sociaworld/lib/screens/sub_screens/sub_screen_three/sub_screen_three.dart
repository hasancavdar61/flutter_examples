import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sociaworld/widgets/sub_screen_widget.dart';


class SubScreenThree extends StatelessWidget {
  const SubScreenThree({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () => Get.toNamed('/RustemScreenOne'),
                child: const Text('RustemScreenOne'),
              ),
              TextButton(
                onPressed: () => Get.toNamed('/RustemScreenTwo'),
                child: const Text('RustemScreenTwo'),
              ),
            ],
          ),
        ),
        body: SubScreenOneWidget());
  }
}