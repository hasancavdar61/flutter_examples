import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_clinic/widgets/bottom_nav_bar_widget.dart';
import 'package:health_clinic/widgets/main_page_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var commonData = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:

          /// Static type [BottomBarWithItems]
          const BottomBarWithItems(),

      ///[MainPage] design come from [MainPageWidget]
      body: MainPageWidget(
        commonData: commonData,
      ),
    );
  }
}
